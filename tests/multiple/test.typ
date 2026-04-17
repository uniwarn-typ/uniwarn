#import "/lib.typ":*
#set page(width: auto, height: auto)
#let my-namespace = "font-warnings"
#let my-warnns = "warnings::" + my-namespace
#let your-namespace = "uniwarn"
#let your-warnns = "warnings::" + your-namespace

#register-namespace(my-namespace)
#register-namespace(your-namespace)
#let my-warning = warning.with(namespace: my-namespace, prefix: "[font-warnings] ")
#let your-warning = warning.with(namespace: your-namespace, prefix: "[uniwarn] ")

#context ([debug::] + repr(state(my-warnns, true).get()))
#context ([debug::] + repr(state(your-warnns, true).get()))

#my-warning("This is a warning message from the font-warnings package. It should be visible in the output.")
#your-warning("This is a warning message from the uniwarn package. It should be visible in the output.")

#disable-warnings(my-namespace)
#context ([debug::] + repr(state(my-warnns, true).get()))
#my-warning("This warning should be disabled and not visible in the output.")

#disable-warnings(your-namespace)
#context ([debug::] + repr(state(your-warnns, true).get()))
#your-warning("This warning should be disabled and not visible in the output.")

#enable-warnings(my-namespace)
#context ([debug::] + repr(state(my-warnns, true).get()))
#my-warning("This warning should be enabled again and visible in the output.")

#enable-warnings(your-namespace)
#context ([debug::] + repr(state(your-warnns, true).get()))
#your-warning("This warning should be enabled again and visible in the output.")


//finally try to register namespace again
#register-namespace(my-namespace, panic: false)

