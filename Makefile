clean: 
	rm -r public

#################################
# Build the site using blogdown #
#################################

build: clean
	R -e "blogdown::build_site()"

######################
# Serve site locally #
######################

serve: clean
	R -e "blogdown::serve_site()"

#########################
# Deploy site to GitHub #
#########################

deploy: build
	GIT_DEPLOY_DIR=public ./deploy.sh
