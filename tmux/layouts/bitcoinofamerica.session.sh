session_root "~/projects/aml/bitcoinofamerica"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "bitcoinofamerica"; then
  new_window "ansible"
  run_cmd "cd ansible"
  run_cmd "workon ansible2.8"

  new_window "website"
  run_cmd "cd website"

  new_window "websitebackoffice"
  run_cmd "cd website-backoffice"

  select_window 1
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
