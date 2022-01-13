session_root "~/projects/aml/atm/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "aml-atm"; then
  new_window "ansible"
  run_cmd "cd ansible"
  run_cmd "workon ansible2.8"

  new_window "atm-api"
  run_cmd "cd atm-api"
  # run_cmd "workon aml-atm-api"

  new_window "atm-electron"
  run_cmd "cd atm-electron"

  new_window "atm-hardware"
  run_cmd "cd atm-hardware"

  new_window "atm-webapp"
  run_cmd "cd atm-webapp"

  select_window 1
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
