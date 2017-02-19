defmodule RoleKvmGuest do
	def role(_tags \\ []) do
		%{
			desired_packages: [
				"xserver-xorg-video-qxl",
				"qemu-guest-agent",
				"spice-vdagent",
			],
			implied_roles: [RoleCustomPackages],
		}
	end
end
