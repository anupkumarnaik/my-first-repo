provider "google" {
  credentials = file("extreme-signal-tf-sa.json")
  project     = "extreme-signal-342905"
  region      = "us-east1" 
}