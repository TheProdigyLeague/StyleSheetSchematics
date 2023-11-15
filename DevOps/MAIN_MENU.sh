                           ...... ..----==+++++++==--:....                                          
                           ...:===++++++++++++++++++++++=-..                                        
                    ... ..:++++++++++++++++++++++++++++++++=....                                    
                 .....:=++++++++++++++==---:.....:-=-=+++++++:...                                   
             .....:-++++++++++++=-:.....          . ...-=+++++:.                                    
          .....:=+++++++++++=:....  .                 ...=+++++.                                    
          ...-++++++++++=:....                        .  :+++++.                                    
      .....+++++++++==-.                              ...:+++++..                                   
      ..:=++++++++=:. .                              ....=++++-.                                    
    ..:=++++++++:...                                  ..-++++=..                                    
   ..=++++++++:.. ..                                 ..-+++++:..                                    
...:++++++++-.                                    ...:++++++:.                                      
..-+++++++=...                                 ....:=+++++=..                                       
.:+++++++-...                                . ..:=++++++-..                                        
.+++++++-.          ...........      .........-=+++++++-...                                         
-++++++=..          ...:+:.....      ......=+++++++++....                                           
=++++++-..             .-=++=:.....:-=++++++++++==:.               ...........                      
:++++++-..             ...:-=++++++++++++++=--:...                 ..:+++++-..                      
.-++++++:.                   ..::::::::...           ...:-----..   ..+++++=:.                       
..-++++++.                 .. ...........             ..=+++++...  .:+++++=..                       
. .-++++++=...                     .....-++-...      ..-+++++:.....:++++++=..                       
 ....-+++++=-....                . .:=++++++=:.    ...:++++++:....:=+=-+++=...  ....    ... ..      
   ....-++++++-...            ....:=++++-:-++:..  . ..+++++++:...:=++.:=+++-.. . ............       
     . ..:++++++=:......   ......=++++=...:++===. ...=++:=+++-..:=++...-++++:..:====++++====:...... 
       . ...=++++++:..     ..:=++++++-....++++++-...+++:.:++++.:++=.....=++++++++++++++++++++++-..  
       .  .. .:=+++++=....:+++++++++:.  .=++++++...=++-. .=++++++-.......=++++:...     .....-=+++-..
             ....-=++++=++++=--++++-. ..:=+++++-..-++=.....=++++-......=++-+++=..          . ..-++-.
             .. ...=+++++-:...=++++:....=++++++..:=++.    .:++++=....-++:..++++. .            ...=+-
             ...+==+++=+++...:=+++-....-++++++:..+++..   .-++++++-..+++-..-+++-...            ...-++
         ....-+++==:. :+++...-++++:...:+++++++..+++.. ...=+=:-+++-.-++-..+++=:....            ...:==
      ....:+++++-... .:+++-..-++++-...+++=+++=:++=:.. .-++-.-+++=:.=++++++=-... .             ...-=.
   ....:=++++-...   ..:+++-..:=+++=::+++:=++++++=:....=+=:-+++++:..:+++-:.. .              ....-=-. 
   ...=++++=... .   ..=+++. ..=++++++++-.=++++++.....++++++++-......... .                    ...... 
   ..++++++...      .+++++.   .+++++++-...++++=......-+++-.....                                     
   .=+++++...     ..=++++..   ..=+++=-. ....:........ ... . ...                                     
   -+++++-      ..-=++++:..   .........     . .                                                     
   -+++++=.....-=+++++=:...        ..                                                               
   :=++++++++++++++++=..                                                                            
   .-+++++++++++++=:.. .                                                                            
   ...-=+++++==-:..... .                                                                            

!tool/github-action/deploy-heroku.sh$ 1fc07b1f4cb00ade0a2d29d7b8f13d23
    <br>
# Copyright (c(TM)) 2023, Google LLC
#
# ANY PERSON OBTAINING A COPY OF THIS SOFTWARE AND ASSOCIATED DOCUMENTATION FILES TO DEAL IN SOFTWARE.
# MAY, WITHOUT RESTRICTION, AND IS HEREBY GRANTED PERMISSION TO USE, COPY, MOD, MERGE, PUBLISH, DISTRO, SUB-LICENSE, AND/OR SELL # COPIES OF THIS SOFTWARE TO PERMIT PERSONS WHOM THE SOFTWARE IS FURNISHED THEREOF WITH SUBJECT TO CONDITIONS:
#
# * COPYRIGHT NOTICE INCLUDED IN COPIES OR SUBSTANTIAL PORTIONS.
# * "AS IS" WITHOUT WARRANT, WITHOUT EVEN THE EXPRESS OR IMPLIED MERCHANTABILITY, FITNESS, OR FOR A PARTICULAR PURPOSE AND   #NONINFRINGEMENT. IN NO EVENT WILL THESE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR ANY LIABILITY. WHETHER IN ACTION OF #CONTRACT, TORT, ARISING FROM, WITHIN AND OF ITSELF USE THE DEALINGS IN THE SOFTWARE.
~!/bin/bash$ -e

# Copyright 2023 Google Inc. Use of this source code is governed by an MIT-style license that can be found in the LICENSE file or @
# https://opensource.org/licenses/MIT.

~$ curl "https://kolkrabbi.heroku.com/apps/98fc74a8-ff56-4a21-85f6-7a1fc8ba95c9/github/push" \
  -H "Content-Type: application/json" \
  -H "Accept: application/json, text/javascript, */*; q=0.01" \
  -H "Authorization: Bearer $HEROKU_TOKEN" \
  -H "accept-encoding: gzip, deflate, br" \
  -H "accept-language: en-US,en;q=0.9" \
  -H "origin: https://dashboard.heroku.com" \
  -H "referer: https://dashboard.heroku.com/" \
  -d '{"branch":"main"}' \
  --fail --output -throw error
