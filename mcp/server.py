from fastmcp import FastMCP
import requests

mcp = FastMCP("Swiss Knife MCP")

@mcp.tool
def add(a: int, b: int) -> int:
    """Add two numbers"""
    return a + b

@mcp.tool
def fetch_url(url: str) -> str:
    """Fetch / download the content of a given URL. Return the HTML content as a string."""
    response = requests.get(url)
    return response.text

if __name__ == "__main__":
    mcp.run(transport="http", port=3333)
    
    
    
# Add server to 

## LM Studio

#    "swiss knife": {
#      "url": "http://localhost:3333/mcp"
#    }

## Github Copilot 

#"swiss knife":{
#			"type":"http",
#			"url":"http://localhost:3333/mcp",
#			"gallery": true
#		}