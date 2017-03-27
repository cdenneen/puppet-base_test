class base_test(
  $notify_message = 'base',
  $filebeat_prospectors = {}
) {
  $filebeat_prospectors_final = hiera_hash('filebeat::prospectors', $filebeat_prospectors)
  class {'filebeat':
    prospectors       => $filebeat_prospectors_final,
  }
  class {'notify_test':
    message => $notify_message
  }
}
