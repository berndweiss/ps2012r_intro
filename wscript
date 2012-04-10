## -*-python-*- mode

top = '.'
out = 'build/'

def configure(ctx):
    ctx.find_program('emacs')	

def build(ctx):
    
    ## source: http://blog.nguyenvq.com/2010/10/30/bash-batch-script-to-convert-org-mode-file-to-html/
    command1="emacs --batch --load \"e:/config/.emacs\" --visit ${SRC} --funcall org-babel-tangle"	

    command2="emacs --batch --load \"e:/config/.emacs\" --visit ${SRC} --funcall org-export-as-latex"	
	
	
    ctx(rule=command1, source="slide/ps2012-intro_R.org")
    ctx(rule=command2, source="slide/ps2012-intro_R.org")
	
    ##doc = ctx.path.find_node('slide/ps2012-intro_R.org')
	
    ## use path.parent.parent instead of "../../", see http://docs.waf.googlecode.com/git/book_16/single.html
    ## 5.2.2. Listing files and folders
    ##ctx.deps_man[id(doc)] = ctx.path.parent.parent.ant_glob('graph/**')
	
	
	
