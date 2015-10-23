
## The TeamCity agent with Android SDK

The image contains the following preinstalled Android packages:

- Android SDK Tools, revision 24.4.1
- Android SDK Platform-tools, revision 23.0.1
- Android SDK Build-tools, revision 22.0.1
- SDK Platform Android 6.0, API 23, revision 1
- SDK Platform Android 5.1.1, API 22, revision 2
- Android Support Repository, revision 24
- Android Support Library, revision 23.1
- Google Play services, revision 27
- Google Repository, revision 22
- Google Play APK Expansion Library, revision 3
- Google Play Billing Library, revision 5
- Google Play Licensing Library, revision 2
- Android Auto API Simulators, revision 1
- Google Web Driver, revision 2

### How to use the image
```
docker run --name teamcity-agent \
   --link teamcity:teamcity \
   -e TEAMCITY_SERVER_URL=http://teamcity:8111 \
   -e TEAMCITY_AGENT_NAME=Default \
   -d agileapp/teamcity-agent
```
