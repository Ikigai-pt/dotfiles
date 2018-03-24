# Movement and quick edits

1. Delete in word
 ``` diw ```
2. Change in word
``` ciw ```
3. Change inside quotes
``` ci" ```
4. Surround
``` Replace { hello } with [ hello ] -> cs{]```
5. :w!

6. Start using t & f

7. Motion gj gk ( sentense &  { for paragraph

8. For illustration, here is a list of delete commands, grouped from small to big
  objects.  Note that for a single character and a whole line the existing vi
  movement commands are used.
* "dl"	delete character (alias: "x")		|dl|

* "diw"	delete inner word			*diw*

* "daw"	delete a word				*daw*

* "diW"	delete inner WORD (see |WORD|)		*diW*

* "daW"	delete a WORD (see |WORD|)		*daW*

* "dgn"   delete the next search pattern match    *dgn*

* "dd"	delete one line				|dd|

* "dis"	delete inner sentence			*dis*

* "das"	delete a sentence			*das*

* "dib"	delete inner '(' ')' block		*dib*

* "dab"	delete a '(' ')' block			*dab*

* "dip"	delete inner paragraph			*dip*

* "dap"	delete a paragraph			*dap*

* "diB"	delete inner '{' '}' block		*diB*

* "daB"	delete a '{' '}' block			*daB*


