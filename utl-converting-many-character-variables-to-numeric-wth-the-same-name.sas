Converting many character variables to numeric wth the same name;                                                                        
                                                                                                                                         
 Two Solutions                                                                                                                           
                                                                                                                                         
    a. Ted Clay's do_over                                                                                                                
    b. Bart's more flexible macroarray package                                                                                           
       Has more datastep functionality                                                                                                   
       Bartosz Jablonski                                                                                                                 
       yabwon@gmail.com                                                                                                                  
                                                                                                                                         
                                                                                                                                         
https://cutt.ly/ugOYY3k                                                                                                                  
https://github.com/rogerjdeangelis/utl-converting-many-character-variables-to-numeric-wth-the-same-name                                  
                                                                                                                                         
SAS Forum                                                                                                                                
https://cutt.ly/qgOY3Nv                                                                                                                  
https://communities.sas.com/t5/SAS-Programming/Converting-or-replicating-array-variables-from-character-to/m-p/695379                    
                                                                                                                                         
macros                                                                                                                                   
https://tinyurl.com/y9nfugth                                                                                                             
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories                                               
                                                                                                                                         
#                                                                                                                                        
#####  #   #  ####   #   #  #####                                                                                                        
  #    ##  #  #   #  #   #    #                                                                                                          
  #    # # #  #   #  #   #    #                                                                                                          
  #    #  ##  ####   #   #    #                                                                                                          
  #    #   #  #      #   #    #                                                                                                          
  #    #   #  #      #   #    #                                                                                                          
#####  #   #  #       ###     #                                                                                                          
                                                                                                                                         
#! INPUT ;                                                                                                                               
                                                                                                                                         
                                                                                                                                         
# This list is defined in my autoexec file;                                                                                              
                                                                                                                                         
%let months = JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC;                                                                           
                                                                                                                                         
data have ;                                                                                                                              
  array mths[12] $4 &months ;                                                                                                            
  do rec=1 to 5;                                                                                                                         
     do idx=1 to 12;                                                                                                                     
        mths[idx] = put(int(900#uniform(567)) + 100,4.);                                                                                 
     end;                                                                                                                                
     output;                                                                                                                             
  end;                                                                                                                                   
  drop rec idx;                                                                                                                          
run;quit;                                                                                                                                
                                                                                                                                         
                                                                                                                                         
 WORK.HAVE total obs=5                                                                                                                   
                                                                                                                                         
 JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC                                                                                         
                                                                                                                                         
 886 136 730 171 593 622 882 522 309 768 598 131                                                                                         
 887 184 669 558 613 271 843 486 307 133 730 871                                                                                         
 795 196 797 763 391 789 982 319 998 829 403 572                                                                                         
 748 880 361 375 478 924 472 947 610 550 183 890                                                                                         
 925 664 866 167 578 657 214 231 939 743 436 992                                                                                         
                                                                                                                                         
NOTE THE CHARACTER TYPE                                                                                                                  
                                                                                                                                         
 Variables in Creation Order                                                                                                             
                                                                                                                                         
 #    Variable    Type    Len                                                                                                            
                                                                                                                                         
 1    JAN         Char      4                                                                                                            
 2    FEB         Char      4                                                                                                            
 3    MAR         Char      4                                                                                                            
 4    APR         Char      4                                                                                                            
 5    MAY         Char      4                                                                                                            
 6    JUN         Char      4                                                                                                            
 7    JUL         Char      4                                                                                                            
 8    AUG         Char      4                                                                                                            
 9    SEP         Char      4                                                                                                            
10    OCT         Char      4                                                                                                            
11    NOV         Char      4                                                                                                            
12    DEC         Char      4                                                                                                            
                                                                                                                                         
*                                                                                                                                        
 ###   #   #  #####  ####   #   #  #####                                                                                                 
#   #  #   #    #    #   #  #   #    #                                                                                                   
#   #  #   #    #    #   #  #   #    #                                                                                                   
#   #  #   #    #    ####   #   #    #                                                                                                   
#   #  #   #    #    #      #   #    #                                                                                                   
#   #  #   #    #    #      #   #    #                                                                                                   
 ###    ###     #    #       ###     #                                                                                                   
                                                                                                                                         
#! OUTPUT ;                                                                                                                              
                                                                                                                                         
NOE NUMERIC                                                                                                                              
                                                                                                                                         
 Variables in Creation Order                                                                                                             
                                                                                                                                         
 #    Variable    Type    Len                                                                                                            
                                                                                                                                         
 1    JAN         Num       8                                                                                                            
 2    FEB         Num       8                                                                                                            
 3    MAR         Num       8                                                                                                            
 4    APR         Num       8                                                                                                            
 5    MAY         Num       8                                                                                                            
 6    JUN         Num       8                                                                                                            
 7    JUL         Num       8                                                                                                            
 8    AUG         Num       8                                                                                                            
 9    SEP         Num       8                                                                                                            
10    OCT         Num       8                                                                                                            
11    NOV         Num       8                                                                                                            
12    DEC         Num       8                                                                                                            
                                                                                                                                         
*                                                                                                                                        
 ###    ###   #      #   #  #####  #####   ###   #   #                                                                                   
#   #  #   #  #      #   #    #      #    #   #  ##  #                                                                                   
 #     #   #  #      #   #    #      #    #   #  # # #                                                                                   
  #    #   #  #      #   #    #      #    #   #  #  ##                                                                                   
   #   #   #  #      #   #    #      #    #   #  #   #                                                                                   
#   #  #   #  #      #   #    #      #    #   #  #   #                                                                                   
 ###    ###   #####   ###     #    #####   ###   #   #                                                                                   
                                                                                                                                         
#####  #####  ####                                                                                                                       
  #    #       #  #                                                                                                                      
  #    #       #  #                                                                                                                      
  #    ####    #  #                                                                                                                      
  #    #       #  #                                                                                                                      
  #    #       #  #                                                                                                                      
  #    #####  ####                                                                                                                       
                                                                                                                                         
#! TED ;                                                                                                                                 
                                                                                                                                         
%array(vs,values=%varlist(have));                                                                                                        
                                                                                                                                         
proc sql;                                                                                                                                
  create                                                                                                                                 
      table want as                                                                                                                      
  select                                                                                                                                 
      %do_over(vs,phrase=input(?,best.) as ?, between=comma)                                                                             
  from                                                                                                                                   
      have                                                                                                                               
;quit;                                                                                                                                   
                                                                                                                                         
HOW TO GET GENERATED CODE                                                                                                                
                                                                                                                                         
%put %do_over(vs,phrase=input(?,best.) as ?, between=comma);                                                                             
                                                                                                                                         
input(JAN,best.) as JAN , input(FEB,best.) as FEB , input(MAR,best.) as MAR ,                                                            
input(APR,best.) as APR , input(MAY,best.) as MAY , input(JUN,best.) as JUN ,                                                            
input(JUL,best.) as JUL , input(AUG,best.) as AUG , input(SEP,best.) as SEP ,                                                            
input(OCT,best.) as OCT , input(NOV,best.) as NOV , input(DEC,best.) as DEC                                                              
                                                                                                                                         
                                                                                                                                         
*                                                                                                                                        
####     #    ####   #####                                                                                                               
 #  #   # #   #   #    #                                                                                                                 
 #  #  #   #  #   #    #                                                                                                                 
 ###   #####  ####     #                                                                                                                 
 #  #  #   #  # #      #                                                                                                                 
 #  #  #   #  #  #     #                                                                                                                 
####   #   #  #   #    #                                                                                                                 
                                                                                                                                         
#! BART ;                                                                                                                                
                                                                                                                                         
%let months = JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC;                                                                           
                                                                                                                                         
data have ;                                                                                                                              
                                                                                                                                         
  array mths[12] $4 &months ;                                                                                                            
                                                                                                                                         
  do rec=1 to 5;                                                                                                                         
                                                                                                                                         
     do idx=1 to 12;                                                                                                                     
                                                                                                                                         
        mths[idx] = put(int(900*uniform(567)) + 100,4.);                                                                                 
                                                                                                                                         
     end;                                                                                                                                
                                                                                                                                         
     output;                                                                                                                             
                                                                                                                                         
  end;                                                                                                                                   
                                                                                                                                         
  drop rec idx;                                                                                                                          
                                                                                                                                         
run;quit;                                                                                                                                
                                                                                                                                         
filename packages "%sysfunc(pathname(work))"; /* setup temporary directory                                                               
for packages in the WORK */                                                                                                              
filename SPFinit url "                                                                                                                   
https://raw.githubusercontent.com/yabwon/SAS_PACKAGES/main/SPF/SPFinit.sas                                                               
";                                                                                                                                       
%include SPFinit; /* enable the framework */                                                                                             
                                                                                                                                         
%installPackage(macroArray basePlus) /* install packages */                                                                              
  %loadPackageS(macroArray,basePlus) /* load packages content into the SAS                                                               
session */                                                                                                                               
                                                                                                                                         
%array(Mth[*] %getVars(have), macarray=Y, vnames=Y)                                                                                      
                                                                                                                                         
%put *%do_over(Mth)*;                                                                                                                    
                                                                                                                                         
proc sql;                                                                                                                                
                                                                                                                                         
  create                                                                                                                                 
                                                                                                                                         
      table want as                                                                                                                      
                                                                                                                                         
  select                                                                                                                                 
                                                                                                                                         
      %do_over(Mth                                                                                                                       
              ,phrase=%nrstr(input(%Mth(&_I_.), best.) as %Mth(&_I_.))                                                                   
              ,between=%str(,)                                                                                                           
              )                                                                                                                          
                                                                                                                                         
  from                                                                                                                                   
                                                                                                                                         
      have                                                                                                                               
                                                                                                                                         
;                                                                                                                                        
quit;                                                                                                                                    
                                                                                                                                         
%deleteMacArray(Mth, macarray=Y)                                                                                                         
                                                                                                                                         
*                                                                                                                                        
#       ###    ###                                                                                                                       
#      #   #  #   #                                                                                                                      
#      #   #  #                                                                                                                          
#      #   #  # ###                                                                                                                      
#      #   #  #   #                                                                                                                      
#      #   #  #   #                                                                                                                      
#####   ###    ###                                                                                                                       
                                                                                                                                         
#! LOG ;                                                                                                                                 
                                                                                                                                         
                                                                                                                                         
NOTE: Function quickSortLight saved to work.baseplusfcmp.package.                                                                        
NOTE: Function quickSortHashSDDV saved to work.baseplusfcmp.package.                                                                     
NOTE: Function quickSortHash saved to work.baseplusfcmp.package.                                                                         
NOTE: Function quickSort4NotMiss saved to work.baseplusfcmp.package.                                                                     
NOTE: Function fromNumberToMissing saved to work.baseplusfcmp.package.                                                                   
NOTE: Function fromMissingToNumberBS saved to work.baseplusfcmp.package.                                                                 
                                                                                                                                         
                                                                                                                                         
NOTE: SYSLOADEDPACKAGES=macroArray(0.7) BasePlus(0.8)                                                                                    
NOTE: There were 1 observations read from the data set SASHELP.VMACRO.                                                                   
      WHERE (scope='GLOBAL') and (name='SYSLOADEDPACKAGES');                                                                             
                                                                                                                                         
                                                                                                                                         
NOTE: Loading package BasePlus, version 0.8, license MIT                                                                                 
      *** END ***                                                                                                                        
NOTE: Fileref PC5C9E00 has been deassigned.                                                                                              
20040  session */                                                                                                                        
20041  %array(Mth[*] %getVars(have), macarray=Y, vnames=Y)                                                                               
NOTE:[ARRAY] 12 macrovariables created                                                                                                   
20042  %put *%do_over(Mth)*;                                                                                                             
*JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC*                                                                                        
20043  proc sql;                                                                                                                         
20044    create                                                                                                                          
20045        table want as                                                                                                               
20046    select                                                                                                                          
20047        %do_over(Mth                                                                                                                
20048                ,phrase=%nrstr(input(%Mth(&_I_.), best.) as %Mth(&_I_.))                                                            
20049                ,between=%str(,)                                                                                                    
20050                )                                                                                                                   
20051    from                                                                                                                            
20052        have                                                                                                                        
20053  ;                                                                                                                                 
NOTE: Table WORK.WANT created, with 5 rows and 12 columns.                                                                               
                                                                                                                                         
20054  quit;                                                                                                                             
NOTE: PROCEDURE SQL used (Total process time):                                                                                           
      real time           0.12 seconds                                                                                                   
      cpu time            0.04 seconds                                                                                                   
                                                                                                                                         
                                                                                                                                         
                                                                                       
                                                                                                                            
