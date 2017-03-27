class base_test(
  $notify_message = 'base',
  $filebeat_prospectors = {}
) {
  class {'filebeat':
    prospectors => $filebeat_prospectors
  }
  class {'notify_test':
    message => $notify_message
  }
}
