module ApplicationHelper
  def tenant_name(tenant_id)
    Tenant.find(tenant_id).name
  end
  def verbose_date(date)
		date.strftime('%B %d %Y')
	end
end
