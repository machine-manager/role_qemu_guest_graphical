defmodule RoleQemuGuestGraphical do
	def role(_tags \\ []) do
		%{
			desired_packages: [
				"xserver-xorg-video-qxl",
				# For guest display resizing and clipboard
				"spice-vdagent",
			],
			implied_roles: [RoleQemuGuest],
		}
	end
end
