# script_bash_move

Bash script to move files(matching regex) scattered in subfolders of source directory to a dest directory

```
BEFORE : 

+-> SRC_DIR --> SUBFOLDER_A -> FILE_A
|	          |
|	          +-> SUBFOLDER_B -> FILE_B
|	          |
|	          +-> SUBFOLDER_C -> FILE_C
|
+-> DEST_DIR


AFTER : 

+-> SRC_DIR -> SUBFOLDER_A
|	        |
|	        +-> SUBFOLDER_B
|	        |
|	        +-> SUBFOLDER_C
|
+-> DEST_DIR
	  |
	  +-> FILE_A
	  |
	  +-> FILE_B
	  |
	  +-> FILE_C
    
```
