require 'spec_helper'

describe Toggl do
  context "#workspace_users" do
    it "gets the users of a given workspace" do
      VCR.use_cassette('user_for_workspace') do
        workspace_id = toggl_instance.workspaces.first["id"]

        users = toggl_instance.users_for_workspace workspace_id

        users.should_not be_nil
      end
    end

    it "calls the correct API URI" do
      VCR.use_cassette('user_for_workspace') do
        workspace_id = toggl_instance.workspaces.first["id"]

        toggl_instance.should_receive(:get).with("workspaces/#{workspace_id}/users")

        users = toggl_instance.users_for_workspace workspace_id
      end
    end
  end

  def toggl_instance
    @_toggl_instance ||= Toggl.new token
  end

  def token
    token = if defined? TOGGL_TOKEN
      TOGGL_TOKEN
    else
      "no one cares"
    end
  end
end
