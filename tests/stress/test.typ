#import "/lib.typ":*
#set page(width: auto, height: auto)
#let my-namespace = "fwrn"

#let warning = warning.with(namespace: my-namespace, prefix: "[font-warnings] ")

#context ([debug::] + repr(text.features))

#warning("This is a warning message from the font-warnings package. It should be visible in the output.")

// 1.
#show: disable-warnings(my-namespace)
#context ([debug:(1):] + repr(text.features))
#warning("This warning should be disabled and not visible in the output. 1")

#show: enable-warnings(my-namespace)
#context ([debug:(1):] + repr(text.features))
#warning("This warning should be enabled again and it should be followed by 9 others.")

// 2.
#show: disable-warnings(my-namespace)
#context ([debug:(2):] + repr(text.features))
#warning("This warning should be disabled and not visible in the output. 2")

#show: enable-warnings(my-namespace)
#context ([debug:(2):] + repr(text.features))
#warning("This warning should be enabled again and it should be followed by 8 others.")

// 3.
#show: disable-warnings(my-namespace)
#context ([debug:(3):] + repr(text.features))
#warning("This warning should be disabled and not visible in the output. 3")

#show: enable-warnings(my-namespace)
#context ([debug:(3):] + repr(text.features))
#warning("This warning should be enabled again and it should be followed by 7 others.")

// 4.
#show: disable-warnings(my-namespace)
#context ([debug:(4):] + repr(text.features))
#warning("This warning should be disabled and not visible in the output. 4")

#show: enable-warnings(my-namespace)
#context ([debug:(4):] + repr(text.features))
#warning("This warning should be enabled again and it should be followed by 6 others.")

// 5.
#show: disable-warnings(my-namespace)
#context ([debug:(5):] + repr(text.features))
#warning("This warning should be disabled and not visible in the output. 5")

#show: enable-warnings(my-namespace)
#context ([debug:(5):] + repr(text.features))
#warning("This warning should be enabled again and it should be followed by 5 others.")

// 6.
#show: disable-warnings(my-namespace)
#context ([debug:(6):] + repr(text.features))
#warning("This warning should be disabled and not visible in the output. 6")

#show: enable-warnings(my-namespace)
#context ([debug:(6):] + repr(text.features))
#warning("This warning should be enabled again and it should be followed by 4 others.")

// 7.
#show: disable-warnings(my-namespace)
#context ([debug:(7):] + repr(text.features))
#warning("This warning should be disabled and not visible in the output. 7")

#show: enable-warnings(my-namespace)
#context ([debug:(7):] + repr(text.features))
#warning("This warning should be enabled again and it should be followed by 3 others.")

// 8.
#show: disable-warnings(my-namespace)
#context ([debug:(8):] + repr(text.features))
#warning("This warning should be disabled and not visible in the output. 8")

#show: enable-warnings(my-namespace)
#context ([debug:(8):] + repr(text.features))
#warning("This warning should be enabled again and it should be followed by 2 others.")

// 9.
#show: disable-warnings(my-namespace)
#context ([debug:(9):] + repr(text.features))
#warning("This warning should be disabled and not visible in the output. 9")

#show: enable-warnings(my-namespace)
#context ([debug:(9):] + repr(text.features))
#warning("This warning should be enabled again and it should be followed by 1 other.")

// 10.
#show: disable-warnings(my-namespace)
#context ([debug:(10):] + repr(text.features))
#warning("This warning should be disabled and not visible in the output. 10")

#show: enable-warnings(my-namespace)
#context ([debug:(10):] + repr(text.features))
#warning("This warning should be enabled again and it's the last one.")