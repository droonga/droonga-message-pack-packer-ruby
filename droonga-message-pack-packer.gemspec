# Copyright (C) 2013-2014 Droonga Project
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License version 2.1 as published by the Free Software Foundation.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'droonga/message-pack-packer/version'

Gem::Specification.new do |spec|
  spec.name          = "droonga-message-pack-packer"
  spec.version       = Droonga::MessagePackPacker::VERSION
  spec.authors       = ["Droonga Project"]
  spec.email         = ["droonga@groonga.org"]
  spec.summary       = "A MessagePack packer for Droonga message"
  spec.description   = "This MessagePack packer packs time values into W3C-TDF format string automatically. Because it is a rule in Droonga message."
  spec.homepage      = "https://github.com/droonga/droonga-message-pack-packer-ruby"
  spec.license       = "LGPL-2.1"
  spec.required_ruby_version = '>= 1.9.3'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "msgpack"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "packnga"
  spec.add_development_dependency "test-unit"
end
