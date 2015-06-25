<<<<<<< HEAD
require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
=======
# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  nom             :string
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  remember_digest :string
#  admin           :boolean
#

require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before(:each) do
    @attr = {nom:"Manu",email:"manu@us.ca"}
  end

  it "devrait créer une nouvelle instance dotée des attributs valides" do
    User.create!(@attr)
  end

  it "devrait exiger un nom"
    bad_guys = User.new(@attr.merge(nom:""))
    bad_guys.should_not be_valid
  end

>>>>>>> modeling-users
