include_controls 'cis-ubuntu16.04lts-level1-server' do
    skip_control 'xccdf_org.cisecurity.benchmarks_rule_1.1.17_Ensure_nodev_option_set_on_removable_media_partitions'
    skip_control 'xccdf_org.cisecurity.benchmarks_rule_1.1.18_Ensure_nosuid_option_set_on_removable_media_partitions'
    skip_control 'xccdf_org.cisecurity.benchmarks_rule_1.1.19_Ensure_noexec_option_set_on_removable_media_partitions'
    skip_control 'xccdf_org.cisecurity.benchmarks_rule_1.2.1_Ensure_package_manager_repositories_are_configured'
    skip_control 'xccdf_org.cisecurity.benchmarks_rule_1.2.2_Ensure_GPG_keys_are_configured'
    skip_control 'xccdf_org.cisecurity.benchmarks_rule_3.3.3_Ensure_IPv6_is_disabled'
end

control "xccdf_org.cisecurity.benchmarks_rule_3.3.3_Ensure_IPv6_is_disabled" do
    title "Ensure IPv6 is disabled"
    desc  "
      Although IPv6 has many advantages over IPv4, few organizations have implemented IPv6.
      
      Rationale: If IPv6 is not to be used, it is recommended that it be disabled to reduce the attack surface of the system.
    "
    impact 0.5
    describe file("/boot/grub/grub.cfg") do
      its("content") { should match(/^\s*linux\S*(\s+\S+)+\s+ipv6\.disable=1/) }
    end
  end