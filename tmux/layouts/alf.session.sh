session_root "~/projects/tsl/clients/alf"

if initialize_session "alf"; then
  new_window "run"
  split_h 50
  select_pane 1
  split_v 80
  select_pane 1
  run_cmd "cd alf-backend-django"
  run_cmd "workon alf-api"
  run_cmd "./manage.py runserver"
  select_pane 2
  run_cmd "cd alf-backend-django"
  run_cmd "workon alf-api"
  select_pane 3
  run_cmd "cd alf-angular"
  run_cmd "grunt"

  new_window "back"
  run_cmd "cd alf-backend-django"
  run_cmd "workon alf-api"

  new_window "front"
  run_cmd "cd alf-angular"
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
