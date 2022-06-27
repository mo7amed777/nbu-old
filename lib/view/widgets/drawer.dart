import 'package:demo/view/screens/Main%20Menu/About%20the%20University/University%20Council/Council%20Members.dart';
import 'package:demo/view/screens/Main%20Menu/About%20the%20University/University%20Council/Council%20Org.dart';
import 'package:demo/view/screens/Main%20Menu/Administration/University%20President%20Office/Contact%20US.dart';
import 'package:demo/view/screens/Main%20Menu/Administration/University%20President%20Office/President%20Subordinating%20Units/Advisors%20Office.dart';
import 'package:demo/view/screens/Main%20Menu/Administration/University%20President%20Office/President%20Subordinating%20Units/General%20Administration.dart';
import 'package:demo/view/screens/Main%20Menu/Administration/University%20President%20Office/President%20Subordinating%20Units/Project%20Management%20Office.dart';
import 'package:demo/view/screens/Main%20Menu/Administration/University%20President%20Office/President%20Subordinating%20Units/Risk%20Management%20Unit.dart';
import 'package:demo/view/screens/Main%20Menu/Administration/University%20President%20Office/President%20Subordinating%20Units/Self-generated%20Monitoring.dart';
import 'package:demo/view/screens/Main%20Menu/Administration/University%20President%20Office/PresidentOffice.dart';
import 'package:demo/view/screens/Main%20Menu/Administration/University%20President%20Office/members.dart';
import 'package:demo/view/screens/onboard/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';
import 'package:get/get.dart';
import 'package:social_media_flutter/social_media_flutter.dart';
import '../screens/Main Menu/About the University/AboutTheUniversity.dart';
import '../screens/Main Menu/About the University/AnnualReports.dart';
import '../screens/Main Menu/About the University/ContactUS.dart';
import '../screens/Main Menu/About the University/FactsandFigures.dart';
import '../screens/Main Menu/About the University/Guides.dart';
import '../screens/Main Menu/About the University/Location.dart';
import '../screens/Main Menu/About the University/StratigicPlan.dart';
import '../screens/Main Menu/About the University/University Council/UniversityCouncil.dart';
import '../screens/Main Menu/About the University/VisionandGoals.dart';
import '../screens/Main Menu/Administration/Administration.dart';
import '../screens/Main Menu/Administration/University President Office/Administrations/Administrations.dart';
import '../screens/Main Menu/Administration/University President Office/Centers/Centers.dart';
import '../screens/Main Menu/Administration/University President Office/Deanships/Deanships.dart';
import '../screens/Main Menu/Administration/ProfM_AlShihri.dart';
import '../screens/Main Menu/Administration/UniversityPresident.dart';
import '../screens/Main Menu/Administration/University President Office/The Vice Presidency/VicePresidencies.dart';
import '../screens/Main Menu/Colleges/AlUweqiliya.dart';
import '../screens/Main Menu/Colleges/Arar.dart';
import '../screens/Main Menu/Colleges/Colleges.dart';
import '../screens/Main Menu/Colleges/Rafha.dart';
import '../screens/Main Menu/Colleges/Turaif.dart';
import '../screens/Main Menu/Contact US/CampusesLocations.dart';
import '../screens/Main Menu/Contact US/DoYouNeedHelp.dart';
import '../screens/Main Menu/Contact US/SiteMap.dart';
import '../screens/Main Menu/E-Services/EServices.dart';
import '../screens/Main Menu/E-Services/Employees.dart';
import '../screens/Main Menu/E-Services/FacultyMembers.dart';
import '../screens/Main Menu/E-Services/Students.dart';
import '../screens/Main Menu/Magazine/Magazine.dart';
import '../screens/Main Menu/Magazine/NJournalFundandSciences.dart';
import '../screens/Main Menu/Magazine/NJournalHumanities.dart';
import '../screens/Main Menu/Media Center/Announcements.dart';
import '../screens/Main Menu/Media Center/Events.dart';
import '../screens/Main Menu/Media Center/MediaCenter.dart';
import '../screens/Main Menu/Media Center/NBUinMedia.dart';
import '../screens/Main Menu/Media Center/News/News.dart';
import '../screens/Main Menu/Media Center/PhotoGallery.dart';
import '../screens/Main Menu/Media Center/VideoGallery.dart';
import '../screens/home.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final int drawerItemsCount = 1;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(Home());
                },
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              TreeView(
                nodes: draweritems(),
                indent: 10,
                treeController: TreeController(
                  allNodesExpanded: false,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  Get.to(Login());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.green[800],
                      size: 20,
                    ),
                    Text(
                      ' Logout',
                      style: TextStyle(color: Colors.green[800], fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialIcon(SocialIconsFlutter.facebook_box,
                      Colors.green[900]!, 'https://www.instagram.com/'),
                  socialIcon(SocialIconsFlutter.instagram, Colors.green[800]!,
                      'https://www.instagram.com/'),
                  socialIcon(SocialIconsFlutter.apple, Colors.green,
                      'https://www.instagram.com/'),
                  socialIcon(SocialIconsFlutter.linkedin_box, Colors.lightGreen,
                      'https://www.instagram.com/'),
                  socialIcon(SocialIconsFlutter.twitter, Colors.lime,
                      'https://www.instagram.com/'),
                ],
              )
            ],
          ),
        ));
  }
}

List<TreeNode> draweritems() {
  return [
    TreeNode(
      content: nodeText(
          title: "About the University",
          onPressed: () {
            Get.to(AboutTheUniversity());
          }),
      children: [
        TreeNode(
            content: nodeText(
          title: "Vision, Mission, and Goals",
          onPressed: () {
            Get.to(VisionandGoals());
          },
        )),
        TreeNode(
            content: nodeText(
          title: "Strategic Plan 2020-2025",
          onPressed: () {
            Get.to(StratigicPlan());
          },
        )),
        TreeNode(
            content: nodeText(
          title: "Guides",
          onPressed: () {
            Get.to(Guides());
          },
        )),
        TreeNode(
            content: nodeText(
          title: "Annual Reports",
          onPressed: () {
            Get.to(AnnualReports());
          },
        )),
        TreeNode(
          content: nodeText(
            title: "University Council",
            onPressed: () {
              Get.to(UniversityCouncil());
            },
          ),
          children: [
            TreeNode(
              content: nodeText(
                title: "Members",
                onPressed: () {
                  Get.to(CouncilMembers());
                },
              ),
            ),
            TreeNode(
              content: nodeText(
                title: "الهيكل التنظيمي",
                onPressed: () {
                  Get.to(CouncilOrg());
                },
              ),
            ),
          ],
        ),
        TreeNode(
            content: nodeText(
          title: "Facts and Figures",
          onPressed: () {
            Get.to(FactsandFigures());
          },
        )),
        TreeNode(
            content: nodeText(
          title: "Location",
          onPressed: () {
            Get.to(Location());
          },
        )),
        TreeNode(
            content: nodeText(
          title: "Contact US",
          onPressed: () {
            Get.to(ContactUS());
          },
        )),
      ],
    ),
    TreeNode(
        content: nodeText(
          title: "Media Center",
          onPressed: () {
            Get.to(MediaCenter());
          },
        ),
        children: [
          TreeNode(
              content: nodeText(
            title: "News",
            onPressed: () {
              Get.to(News());
            },
          )),
          TreeNode(
              content: nodeText(
            title: "Events",
            onPressed: () {
              Get.to(Events());
            },
          )),
          TreeNode(
              content: nodeText(
            title: "Announcements",
            onPressed: () {
              Get.to(Announcements());
            },
          )),
          TreeNode(
              content: nodeText(
            title: "NBU in the Media",
            onPressed: () {
              Get.to(NBUinMedia());
            },
          )),
          TreeNode(
              content: nodeText(
            title: "Photo Gallery",
            onPressed: () {
              Get.to(PhotoGallery());
            },
          )),
          TreeNode(
              content: nodeText(
            title: "Video Gallery",
            onPressed: () {
              Get.to(VideoGallery());
            },
          )),
        ]),
    TreeNode(
        content: nodeText(
          title: "Administration",
          onPressed: () {
            Get.to(Administration());
          },
        ),
        children: [
          TreeNode(
              content: nodeText(
            title: "The University's President",
            onPressed: () {
              Get.to(UniversityPresident());
            },
          )),
          TreeNode(
              content: nodeText(
            title: "Professor Mohammad bin Yihya Al-Shihri",
            onPressed: () {
              Get.to(ProfM_AlShihri());
            },
          )),
          TreeNode(
            content: nodeText(
              title: "The University President's office",
              onPressed: () {
                Get.to(UniversityPresidentOffice());
              },
            ),
            children: [
              TreeNode(
                content: nodeText(
                  title: "President Subordinating Units",
                  onPressed: () {},
                ),
                children: [
                  TreeNode(
                    content: nodeText(
                      title: "Advisors Office",
                      onPressed: () {
                        Get.to(AdvisorsOffice());
                      },
                    ),
                  ),
                  TreeNode(
                    content: nodeText(
                      title: "Project Management Office",
                      onPressed: () {
                        Get.to(ProjectManagementOffice());
                      },
                    ),
                  ),
                  TreeNode(
                    content: nodeText(
                      title: "Self-generated Resources Monitoring Unit",
                      onPressed: () {
                        Get.to(SelfGeneratedResourcesMonitoringUnit());
                      },
                    ),
                  ),
                  TreeNode(
                    content: nodeText(
                      title: "Risk Management Unit",
                      onPressed: () {
                        Get.to(RiskManagementUnit());
                      },
                    ),
                  ),
                  TreeNode(
                    content: nodeText(
                      title:
                          "General Administration of Strategic Planning and Vision Realization",
                      onPressed: () {
                        Get.to(GeneralAdministration());
                      },
                    ),
                  ),
                ],
              ),
              TreeNode(
                content: nodeText(
                  title: "Members",
                  onPressed: () {
                    Get.to(OfficeMembers());
                  },
                ),
              ),
              TreeNode(
                content: nodeText(
                  title: "Contact US",
                  onPressed: () {
                    Get.to(ContactOurOffice());
                  },
                ),
              ),
            ],
          ),
          TreeNode(
              content: nodeText(
            title: "Vice-Presidencies",
            onPressed: () {
              Get.to(VicePresidencies());
            },
          )),
          TreeNode(
              content: nodeText(
            title: "Deanships",
            onPressed: () {
              Get.to(Deanships());
            },
          )),
          TreeNode(
              content: nodeText(
            title: "Centers",
            onPressed: () {
              Get.to(Centers());
            },
          )),
          TreeNode(
              content: nodeText(
            title: "Administrations",
            onPressed: () {
              Get.to(Administrations());
            },
          )),
        ]),
    TreeNode(
        content: nodeText(
          title: "Colleges",
          onPressed: () {
            Get.to(Colleges());
          },
        ),
        children: [
          TreeNode(
              content: nodeText(
            title: "Arar",
            onPressed: () {
              Get.to(Arar());
            },
          )),
          TreeNode(
              content: nodeText(
            title: "Rafha",
            onPressed: () {
              Get.to(Rafha());
            },
          )),
          TreeNode(
              content: nodeText(
            title: "Turaif",
            onPressed: () {
              Get.to(Turaif());
            },
          )),
          TreeNode(
              content: nodeText(
            title: "Al-Uweqiliya",
            onPressed: () {
              Get.to(AlUweqiliya());
            },
          )),
        ]),
    TreeNode(
        content: nodeText(
          title: "Magazine",
          onPressed: () {
            Get.to(Magazine());
          },
        ),
        children: [
          TreeNode(
              content: nodeText(
            title: "The North Journal of Fundamental and Applied Sciences",
            onPressed: () {
              Get.to(NJournalFundandSciences());
            },
          )),
          TreeNode(
              content: nodeText(
            title: "The North Journal of Humanities",
            onPressed: () {
              Get.to(NJournalHumanities());
            },
          )),
        ]),
    TreeNode(
        content: nodeText(
          title: "E-Services",
          onPressed: () {
            Get.to(EServices());
          },
        ),
        children: [
          TreeNode(
              content: nodeText(
            title: "Faculty Members",
            onPressed: () {
              Get.to(FacultyMembers());
            },
          )),
          TreeNode(
              content: nodeText(
            title: "Students",
            onPressed: () {
              Get.to(Students());
            },
          )),
          TreeNode(
              content: nodeText(
            title: "Employees",
            onPressed: () {
              Get.to(Employees());
            },
          )),
        ]),
    TreeNode(
        content: nodeText(
          title: "Contact US",
          onPressed: () {
            Get.to(ContactUS());
          },
        ),
        children: [
          TreeNode(
              content: nodeText(
            title: "Site Map",
            onPressed: () {
              Get.to(SiteMap());
            },
          )),
          TreeNode(
              content: nodeText(
            title: "Campuses Locations",
            onPressed: () {
              Get.to(CampusesLocations());
            },
          )),
          TreeNode(
              content: nodeText(
            title: "Do you need help?",
            onPressed: () {
              Get.to(DoYouNeedHelp());
            },
          )),
          TreeNode(
              content: nodeText(
            title: "Contact US",
            onPressed: () {
              Get.to(ContactUS());
            },
          )),
        ]),
  ];
}

Widget nodeText({required Function onPressed, required String title}) =>
    Expanded(
      child: InkWell(
        child: Text(title),
        onTap: () => onPressed(),
      ),
    );

Widget socialIcon(IconData icon, Color color, String link) => SocialWidget(
      placeholderText: '', //text visible to viewers
      iconData: icon,
      //use the respective social logo
      iconColor: color,
      //(optional, default - grey)
      link: link,
      //provide the link
      //placeholder text style
    );
