class HostResult < ActiveRecord::Base
  belongs_to :run
  belongs_to :host
end
