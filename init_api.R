# Arya Kondur
# October 2021
#
# Initialize tokens needed to access Twitter API.

library(dotenv)

get_api_token <- function() {
  # Load environment variables from .env
  load_dot_env()
  
  # If there is no file with Twitter API token information, create a token
  if (Sys.getenv("TWITTER_PAT") == "") {
    create_token(app = "RateState", 
                 consumer_key = Sys.getenv("API_KEY"), 
                 consumer_secret = Sys.getenv("API_SECRET_KEY"), 
                 access_token = Sys.getenv("ACCESS_TOKEN"), 
                 access_secret = Sys.getenv("ACCESS_SECRET"))
  }
  
  # Get the token 
  token <- readRDS(Sys.getenv("TWITTER_PAT"))
  
  return(token)
}

