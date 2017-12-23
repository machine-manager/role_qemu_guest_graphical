defmodule RoleKvmGuest do
	def role(_tags \\ []) do
		%{
			desired_packages: [
				"xserver-xorg-video-qxl",
				"spice-vdagent",
			],
			implied_roles: [RoleCustomPackages],
		}
	end
end
