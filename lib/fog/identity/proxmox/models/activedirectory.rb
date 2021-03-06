# frozen_string_literal: true

# Copyright 2018 Tristan Robert

# This file is part of Fog::Proxmox.

# Fog::Proxmox is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# Copyright 2018 Tristan Robert

# This file is part of Fog::Proxmox.

# Fog::Proxmox is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# Fog::Proxmox is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with Fog::Proxmox. If not, see <http://www.gnu.org/licenses/>.

require 'fog/proxmox/models/model'

module Fog
  module Identity
    class Proxmox
      # class Active Directory authentication
      class Activedirectory < Fog::Proxmox::Model
        identity :type
        attribute :base_dn
        attribute :bind_dn
        attribute :capath
        attribute :cert
        attribute :certkey
        attribute :comment
        attribute :default
        attribute :domain
        attribute :port
        attribute :secure
        attribute :server1
        attribute :server2
        attribute :tfa
        attribute :verify
        def initialize(attributes)
          self.type = 'ad'
          super
        end
      end
    end
  end
end
