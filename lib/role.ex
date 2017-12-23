defmodule RoleQemuGuestGraphical do
	def role(_tags \\ []) do
		%{
			desired_packages: [
				"xserver-xorg-video-qxl",
				# We don't need spice-vdagent because we don't use SPICE clipboard
				# sharing, as it is unsafe to use:
				# https://bugzilla.redhat.com/show_bug.cgi?id=1320263
			],
			implied_roles: [RoleQemuGuest],
		}
	end
end
