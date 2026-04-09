#import "/lib.typ":*

#let my-namespace = "fwrn"

#let warning = warning.with(namespace: my-namespace, prefix: "[font-warnings] ")

#context ([debug::] + repr(text.features))

#warning("This is a warning message from the font-warnings package. It should be visible in the output.")


#show: disable-warnings(my-namespace)
#context ([debug::] + repr(text.features))
#warning("This warning should be disabled and not visible in the output.")

#show: enable-warnings(my-namespace)
#context ([debug::] + repr(text.features))
#warning("This warning should be enabled again and visible in the output.")