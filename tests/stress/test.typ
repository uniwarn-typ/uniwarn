#import "/lib.typ":*
#set page(width: auto, height: auto)
#let my-namespace = "font-warnings"

#register-namespace(my-namespace)

#let warning = warning.with(namespace: my-namespace, prefix: "[font-warnings] ")

#context ([debug::] + repr(state(my-namespace, true).get()))

#warning("This is a warning message from the font-warnings package. It should be visible in the output.")

// 1.
#disable-warnings(my-namespace)
#context ([debug:(1):] + repr(state(my-namespace, true).get()))
#warning("This warning should be disabled and not visible in the output. 1")

#enable-warnings(my-namespace)
#context ([debug:(1):] + repr(state(my-namespace, true).get()))
#warning("This warning should be enabled again and it should be followed by 9 others.")

// 2.
#disable-warnings(my-namespace)
#context ([debug:(2):] + repr(state(my-namespace, true).get()))
#warning("This warning should be disabled and not visible in the output. 2")

#enable-warnings(my-namespace)
#context ([debug:(2):] + repr(state(my-namespace, true).get()))
#warning("This warning should be enabled again and it should be followed by 8 others.")

// 3.
#disable-warnings(my-namespace)
#context ([debug:(3):] + repr(state(my-namespace, true).get()))
#warning("This warning should be disabled and not visible in the output. 3")

#enable-warnings(my-namespace)
#context ([debug:(3):] + repr(state(my-namespace, true).get()))
#warning("This warning should be enabled again and it should be followed by 7 others.")

// 4.
#disable-warnings(my-namespace)
#context ([debug:(4):] + repr(state(my-namespace, true).get()))
#warning("This warning should be disabled and not visible in the output. 4")

#enable-warnings(my-namespace)
#context ([debug:(4):] + repr(state(my-namespace, true).get()))
#warning("This warning should be enabled again and it should be followed by 6 others.")

// 5.
#disable-warnings(my-namespace)
#context ([debug:(5):] + repr(state(my-namespace, true).get()))
#warning("This warning should be disabled and not visible in the output. 5")

#enable-warnings(my-namespace)
#context ([debug:(5):] + repr(state(my-namespace, true).get()))
#warning("This warning should be enabled again and it should be followed by 5 others.")

// 6.
#disable-warnings(my-namespace)
#context ([debug:(6):] + repr(state(my-namespace, true).get()))
#warning("This warning should be disabled and not visible in the output. 6")

#enable-warnings(my-namespace)
#context ([debug:(6):] + repr(state(my-namespace, true).get()))
#warning("This warning should be enabled again and it should be followed by 4 others.")

// 7.
#disable-warnings(my-namespace)
#context ([debug:(7):] + repr(state(my-namespace, true).get()))
#warning("This warning should be disabled and not visible in the output. 7")

#enable-warnings(my-namespace)
#context ([debug:(7):] + repr(state(my-namespace, true).get()))
#warning("This warning should be enabled again and it should be followed by 3 others.")

// 8.
#disable-warnings(my-namespace)
#context ([debug:(8):] + repr(state(my-namespace, true).get()))
#warning("This warning should be disabled and not visible in the output. 8")

#enable-warnings(my-namespace)
#context ([debug:(8):] + repr(state(my-namespace, true).get()))
#warning("This warning should be enabled again and it should be followed by 2 others.")

// 9.
#disable-warnings(my-namespace)
#context ([debug:(9):] + repr(state(my-namespace, true).get()))
#warning("This warning should be disabled and not visible in the output. 9")

#enable-warnings(my-namespace)
#context ([debug:(9):] + repr(state(my-namespace, true).get()))
#warning("This warning should be enabled again and it should be followed by 1 other.")

// 10.
#disable-warnings(my-namespace)
#context ([debug:(10):] + repr(state(my-namespace, true).get()))
#warning("This warning should be disabled and not visible in the output. 10")

#enable-warnings(my-namespace)
#context ([debug:(10):] + repr(state(my-namespace, true).get()))
#warning("This warning should be enabled again and it's the last one.")