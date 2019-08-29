# class Ability
#   include CanCan::Ability

#   def initialize(user)

#       user ||= User.new # guest user (not logged in)
#       if user.userType? "admin"
#         can :manage, :all
#       else
#         can [:create], Contact
#         can [:index], Store
#         can [:create], Order
#         cannot [:create, :index, :update, :edit, :show], Product
#         cannot [:create, :index, :update, :edit, :show], User
#       end

#   end
# end
