# API Summary

## What is a REST API?
A REST API lets two programs talk over the internet using HTTP. A client sends a request to a URL and the server sends back data, usually in JSON format.

## HTTP status codes observed
- 200: request was successful and data was returned.
- 404: the requested resource was not found.

## jq filter used
jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'
- jq: tool to read and filter JSON
- {...}: builds a new object with only the chosen fields
- name:.name etc.: takes that field from the original JSON and gives it a new key
