# sensu-show-users-check
check logged in users

## Configuration
```
usage: show_users.sh [--simple] [ --mandatory username ] [ --unauthorized username ] [ --whitelist username ]

returns a list of users on the local machine

   -s, --simple show users without the number of sessions
   -m username, --mandatory username
                Mandatory users. Return CRITICAL if any of these users are not
                currently logged in
   -b username, --blacklist username
                Unauthorized users. Returns CRITICAL if any of these users are
                logged in. This can be useful if you have a policy that states
                that you may not have a root shell but must instead only use
                'sudo command'. Specifying '-u root' would alert on root having
                a session and hence catch people violating such a policy.
   -a username, --whitelist username
                Whitelist users. This is exceptionally useful. If you define
                a bunch of users here that you know you use, and suddenly
                there is a user session open for another account it could
                alert you to a compromise. If you run this check say every
                3 minutes, then any attacker has very little time to evade
                detection before this trips.

                -m,-u and -w can be specified multiple times for multiple users
                or you can use a switch a single time with a comma separated
                list.
   -w integer, --warning integer
                Set WARNING status if more than INTEGER users are logged in
   -c integer, --critical integer
                Set CRITICAL status if more than INTEGER users are logged in


   -V --version Print the version number and exit
```
