moved {
  from = azurerm_resource_group.main
  to   = module.web_tier.azurerm_resource_group.main
}

moved {
  from = azurerm_virtual_network.main
  to   = module.web_tier.azurerm_virtual_network.main
}

moved {
  from = azurerm_subnet.web
  to   = module.web_tier.azurerm_subnet.web
}

moved {
  from = azurerm_network_security_group.web
  to   = module.web_tier.azurerm_network_security_group.web
}

moved {
  from = azurerm_subnet_network_security_group_association.web
  to   = module.web_tier.azurerm_subnet_network_security_group_association.web
}

moved {
  from = azurerm_public_ip.web
  to   = module.web_tier.azurerm_public_ip.web
}

moved {
  from = azurerm_lb.web
  to   = module.web_tier.azurerm_lb.web
}

moved {
  from = azurerm_lb_backend_address_pool.web
  to   = module.web_tier.azurerm_lb_backend_address_pool.web
}

moved {
  from = azurerm_lb_probe.http
  to   = module.web_tier.azurerm_lb_probe.http
}

moved {
  from = azurerm_lb_rule.http
  to   = module.web_tier.azurerm_lb_rule.http
}

moved {
  from = azurerm_lb_outbound_rule.web
  to   = module.web_tier.azurerm_lb_outbound_rule.web
}

moved {
  from = azurerm_linux_virtual_machine_scale_set.web
  to   = module.web_tier.azurerm_linux_virtual_machine_scale_set.web
}

moved {
  from = azurerm_monitor_autoscale_setting.web
  to   = module.web_tier.azurerm_monitor_autoscale_setting.web
}