session_root "~/projects/tsl/clients/fundthis/perks"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "fundthis"; then
  new_window "vagrant"
  run_cmd "cd ft-ansible"

  new_window "back"
  run_cmd "cd ft-backend-django"
  run_cmd "workon fundthis-perks-api"

  new_window "apidocs"
  run_cmd "cd ft-backend-django/apidocs"

  select_window 1
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
