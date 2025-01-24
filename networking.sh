#!/bin/bash


# Function to display network interfaces

show_interfaces(){
    echo "Networking Interfaces :"
    if command -v ip &> /dev/null; then
        ip a
    else
        ifconfig #fallback if ip is not available
    fi
}

# Function to ping a host
ping_host(){
    echo "Enter the host to ping :"
    read host
    if [-z "$host"]; then
    echo "Host cannot be empty"
    return 
    fi 
    echo "Pinging $host..."
    ping -c 4 "$host" || echo "Ping failed for $host."
}

# Function to display network connections
show_connections(){
    echo "Network connections :"
    netstat -tuln
}

# Function to download a file using wget
download_file() {
    echo "Enter the URL to download:"
    read url
    if [ -z "$url" ]; then
        echo "URL is required. Please enter a valid URL."
        return
    fi
    echo "Downloading $url..."
    wget "$url" || echo "Failed to download from $url."
}

# Function to transfer data using curl
transfer_data() {
    echo "Enter the URL to transfer data:"
    read url
    if [ -z "$url" ]; then
        echo "URL is required. Please enter a valid URL."
        return
    fi
    echo "Transferring data from $url..."
    curl "$url" || echo "Failed to transfer data from $url."
}



# Main menu

while true; do
    echo "Choose an option:"
    echo "1. Show Network Interfaces"
    echo "2. Ping a Host"
    echo "3. Show Network Connections"
    echo "4. Download a File"
    echo "5. Transfer Data"
    echo "6. Exit"
    read choice

    case $choice in
        1) show_interfaces ;;
        2) ping_host ;;
        3) show_connections ;;
        4) download_file ;;
        5) transfer_data ;;
        6) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done

