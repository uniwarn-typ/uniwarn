#import "/lib.typ":*
#set page(width: auto, height: auto)
#let my-namespace = "font-warnings"

#register-namespace(my-namespace)

#let warning = warning.with(namespace: my-namespace, prefix: "[font-warnings] ")

#context ([debug::] + repr(state(my-namespace, true).get()))

#warning("This is a warning message from the font-warnings package. It should be visible in the output.")


#disable-warnings(my-namespace)
#context ([debug::] + repr(state(my-namespace, true).get()))
#warning("This warning should be disabled and not visible in the output.")

#enable-warnings(my-namespace)
#context ([debug::] + repr(state(my-namespace, true).get()))
#warning("This warning should be enabled again and visible in the output.")

//now once via short bindings
#disable(my-namespace)
#context ([debug::] + repr(state(my-namespace, true).get()))
#warning("This warning should be disabled and not visible in the output. (short binding)")

#enable(my-namespace)
#context ([debug::] + repr(state(my-namespace, true).get()))
#warning("This warning should be enabled again and visible in the output. (short binding)")
