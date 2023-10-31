import 'dart:async';
import 'package:api_calling_with_bloc/src/features/home/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:api_calling_with_bloc/src/di/get_it.dart' as get_it;

Future<void> main() async {
  unawaited(get_it.init());
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      routes: {
        '/': (context) => const HomeScreen(),
      },
    ),
  );
}

// void aa() {
//   if (kDebugMode) {
//     if (kDebugMode) {
//       if (kDebugMode) {
//         if (kDebugMode) {
//           if (kDebugMode) {
//             if (kDebugMode) {
//               if (kDebugMode) {
//                 if (kDebugMode) {
//                   if (kDebugMode) {
//                     if (kDebugMode) {
//                       if (kDebugMode) {
//                         if (kDebugMode) {
//                           if (kDebugMode) {
//                             if (kDebugMode) {
//                               if (kDebugMode) {
//                                 if (kDebugMode) {
//                                   if (kDebugMode) {
//                                     if (kDebugMode) {
//                                       if (kDebugMode) {
//                                         if (kDebugMode) {
//                                           if (kDebugMode) {
//                                             if (kDebugMode) {
//                                               if (kDebugMode) {
//                                                 if (kDebugMode) {
//                                                   if (kDebugMode) {
//                                                     if (kDebugMode) {
//                                                       if (kDebugMode) {
//                                                         if (kDebugMode) {
//                                                           if (kDebugMode) {
//                                                             if (kDebugMode) {
//                                                               if (kDebugMode) {
//                                                                 if (kDebugMode) {
//                                                                   if (kDebugMode) {
//                                                                     if (kDebugMode) {
//                                                                       if (kDebugMode) {
//                                                                         if (kDebugMode) {
//                                                                           if (kDebugMode) {
//                                                                             if (kDebugMode) {
//                                                                               if (kDebugMode) {
//                                                                                 if (kDebugMode) {
//                                                                                   if (kDebugMode) {
//                                                                                     if (kDebugMode) {
//                                                                                       if (kDebugMode) {
//                                                                                         if (kDebugMode) {
//                                                                                           if (kDebugMode) {
//                                                                                             if (kDebugMode) {
//                                                                                               if (kDebugMode) {
//                                                                                                 if (kDebugMode) {
//                                                                                                   if (kDebugMode) {
//                                                                                                     if (kDebugMode) {
//                                                                                                       if (kDebugMode) {
//                                                                                                         if (kDebugMode) {
//                                                                                                           if (kDebugMode) {
//                                                                                                             if (kDebugMode) {
//                                                                                                               if (kDebugMode) {
//                                                                                                                 if (kDebugMode) {
//                                                                                                                   if (kDebugMode) {
//                                                                                                                     if (kDebugMode) {
//                                                                                                                       if (kDebugMode) {
//                                                                                                                         if (kDebugMode) {
//                                                                                                                           if (kDebugMode) {
//                                                                                                                             if (kDebugMode) {
//                                                                                                                               if (kDebugMode) {
//                                                                                                                                 if (kDebugMode) {
//                                                                                                                                   if (kDebugMode) {
//                                                                                                                                     if (kDebugMode) {
//                                                                                                                                       if (kDebugMode) {
//                                                                                                                                         if (kDebugMode) {
//                                                                                                                                           if (kDebugMode) {
//                                                                                                                                             if (kDebugMode) {
//                                                                                                                                               if (kDebugMode) {
//                                                                                                                                                 if (kDebugMode) {
//                                                                                                                                                   if (kDebugMode) {
//                                                                                                                                                     if (kDebugMode) {
//                                                                                                                                                       if (kDebugMode) {
//                                                                                                                                                         if (kDebugMode) {
//                                                                                                                                                           if (kDebugMode) {
//                                                                                                                                                             if (kDebugMode) {
//                                                                                                                                                               if (kDebugMode) {
//                                                                                                                                                                 if (kDebugMode) {
//                                                                                                                                                                   if (kDebugMode) {
//                                                                                                                                                                     if (kDebugMode) {
//                                                                                                                                                                       if (kDebugMode) {
//                                                                                                                                                                         if (kDebugMode) {
//                                                                                                                                                                           if (kDebugMode) {
//                                                                                                                                                                             if (kDebugMode) {
//                                                                                                                                                                               if (kDebugMode) {
//                                                                                                                                                                                 if (kDebugMode) {
//                                                                                                                                                                                   if (kDebugMode) {
//                                                                                                                                                                                     if (kDebugMode) {
//                                                                                                                                                                                       if (kDebugMode) {
//                                                                                                                                                                                         if (kDebugMode) {
//                                                                                                                                                                                           if (kDebugMode) {
//                                                                                                                                                                                             if (kDebugMode) {
//                                                                                                                                                                                               if (kDebugMode) {
//                                                                                                                                                                                                 if (kDebugMode) {
//                                                                                                                                                                                                   if (kDebugMode) {
//                                                                                                                                                                                                     if (kDebugMode) {
//                                                                                                                                                                                                       if (kDebugMode) {
//                                                                                                                                                                                                         print("object");
//                                                                                                                                                                                                       }
//                                                                                                                                                                                                     }
//                                                                                                                                                                                                   }
//                                                                                                                                                                                                 }
//                                                                                                                                                                                               }
//                                                                                                                                                                                             }
//                                                                                                                                                                                           }
//                                                                                                                                                                                         }
//                                                                                                                                                                                       }
//                                                                                                                                                                                     }
//                                                                                                                                                                                   }
//                                                                                                                                                                                 }
//                                                                                                                                                                               }
//                                                                                                                                                                             }
//                                                                                                                                                                           }
//                                                                                                                                                                         }
//                                                                                                                                                                       }
//                                                                                                                                                                     }
//                                                                                                                                                                   }
//                                                                                                                                                                 }
//                                                                                                                                                               }
//                                                                                                                                                             }
//                                                                                                                                                           }
//                                                                                                                                                         }
//                                                                                                                                                       }
//                                                                                                                                                     }
//                                                                                                                                                   }
//                                                                                                                                                 }
//                                                                                                                                               }
//                                                                                                                                             }
//                                                                                                                                           }
//                                                                                                                                         }
//                                                                                                                                       }
//                                                                                                                                     }
//                                                                                                                                   }
//                                                                                                                                 }
//                                                                                                                               }
//                                                                                                                             }
//                                                                                                                           }
//                                                                                                                         }
//                                                                                                                       }
//                                                                                                                     }
//                                                                                                                   }
//                                                                                                                 }
//                                                                                                               }
//                                                                                                             }
//                                                                                                           }
//                                                                                                         }
//                                                                                                       }
//                                                                                                     }
//                                                                                                   }
//                                                                                                 }
//                                                                                               }
//                                                                                             }
//                                                                                           }
//                                                                                         }
//                                                                                       }
//                                                                                     }
//                                                                                   }
//                                                                                 }
//                                                                               }
//                                                                             }
//                                                                           }
//                                                                         }
//                                                                       }
//                                                                     }
//                                                                   }
//                                                                 }
//                                                               }
//                                                             }
//                                                           }
//                                                         }
//                                                       }
//                                                     }
//                                                   }
//                                                 }
//                                               }
//                                             }
//                                           }
//                                         }
//                                       }
//                                     }
//                                   }
//                                 }
//                               }
//                             }
//                           }
//                         }
//                       }
//                     }
//                   }
//                 }
//               }
//             }
//           }
//         }
//       }
//     }
//   }
// }
