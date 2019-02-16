require_controls 'cis-centos-level1-server' do
    control 'xccdf_org.cisecurity.benchmarks_rule_1.4.2_Ensure_bootloader_password_is_set'
    control 'xccdf_org.cisecurity.benchmarks_rule_1.2.1_Ensure_package_manager_repositories_are_configured' do
        impact 0.8
    end
    control 'xccdf_org.cisecurity.benchmarks_rule_5.6_Ensure_access_to_the_su_command_is_restricted'
end