class Project < ApplicationRecord
  belongs_to :tenant
  has_many :user_projects
  has_many :users, through: :user_projects

  def self.by_user_plan_and_tenant(tenant_id, user)
    tenant = Tenant.find(tenant_id)
      if !user.is_admin?
        tenant.projects
      else
        user.projects.where(tenant_id: tenant.id)
      end
  end
end
