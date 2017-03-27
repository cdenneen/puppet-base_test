class base_test(
  $notify_message = 'base'
) {
  #class {'filebeat':}
  class {'notify_test':
    message => $notify_message
  }
}
