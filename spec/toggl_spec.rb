require 'spec_helper'

describe Toggl do
  context "#workspace_users" do
    it "gets the users of a given workspace" do
      workspace_id = toggl_instance.workspaces.first["id"]

      users = toggl_instance.users_for_workspace workspace_id

      users.should_not be_nil
    end

    it "calls the correct API URI" do
      workspace_id = toggl_instance.workspaces.first["id"]

      toggl_instance.should_receive(:get).with("workspaces/#{workspace_id}/users")

      users = toggl_instance.users_for_workspace workspace_id
    end
  end

  def toggl_instance
    @_toggl_instance ||= Toggl.new TOGGL_TOKEN
  end
end
