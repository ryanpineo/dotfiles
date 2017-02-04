session_root "~/projects/tsl/clients/linktofitness"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "linktofitness"; then
  new_window "vagrant"
  run_cmd "cd ltf-ansible"

  new_window "back"
  run_cmd "cd ltf-backend-django"
  run_cmd "workon linktofitness-api"

  new_window "apidocs"
  run_cmd "cd ltf-backend-django/apidocs"

  select_window 1
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
