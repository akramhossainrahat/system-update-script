#!/bin/bash

# Function to update APT packages
update_apt() {
    echo -e "\n\033[1;36m===========================\033[0m"
    echo -e "\033[1;36mUpdating APT Packages...\033[0m"
    echo -e "\033[1;36m===========================\033[0m"
    
    echo -e "\033[1;34m> Updating package list...\033[0m"
    sudo apt update -y
    echo -e "\033[1;32mPackage list updated.\033[0m"
    
    echo -e "\033[1;34m> Upgrading installed packages...\033[0m"
    sudo apt upgrade -y
    echo -e "\033[1;32mInstalled packages upgraded.\033[0m"
    
    echo -e "\033[1;34m> Performing distribution upgrade...\033[0m"
    sudo apt dist-upgrade -y
    echo -e "\033[1;32mDistribution upgrade completed.\033[0m"
    
    echo -e "\033[1;34m> Removing unnecessary packages...\033[0m"
    sudo apt autoremove -y
    echo -e "\033[1;32mUnnecessary packages removed.\033[0m"
    
    echo -e "\033[1;34m> Cleaning up...\033[0m"
    sudo apt clean
    echo -e "\033[1;32mAPT cleanup completed.\033[0m"
    
    echo -e "\033[1;36mAPT packages updated successfully!\033[0m"
}

# Function to update Snap packages
update_snap() {
    if command -v snap &> /dev/null; then
        echo -e "\n\033[1;36m=============================\033[0m"
        echo -e "\033[1;36mUpdating Snap Packages...\033[0m"
        echo -e "\033[1;36m=============================\033[0m"
        
        echo -e "\033[1;34m> Refreshing Snap packages...\033[0m"
        sudo snap refresh
        echo -e "\033[1;32mSnap packages refreshed.\033[0m"
        
        echo -e "\033[1;36mSnap packages updated successfully!\033[0m"
    else
        echo -e "\n\033[1;33mSnap is not installed. Skipping Snap update.\033[0m"
    fi
}

# Function to update Flatpak packages
update_flatpak() {
    if command -v flatpak &> /dev/null; then
        echo -e "\n\033[1;36m===============================\033[0m"
        echo -e "\033[1;36mUpdating Flatpak Packages...\033[0m"
        echo -e "\033[1;36m===============================\033[0m"
        
        echo -e "\033[1;34m> Updating Flatpak packages...\033[0m"
        flatpak update -y
        echo -e "\033[1;32mFlatpak packages updated.\033[0m"
        
        echo -e "\033[1;36mFlatpak packages updated successfully!\033[0m"
    else
        echo -e "\n\033[1;33mFlatpak is not installed. Skipping Flatpak update.\033[0m"
    fi
}

# Print starting message
echo -e "\033[1;35m=====================================\033[0m"
echo -e "\033[1;35mStarting Comprehensive System Update\033[0m"
echo -e "\033[1;35m=====================================\033[0m"

# Run update functions
update_apt
update_snap
update_flatpak

# Print completion message
echo -e "\n\033[1;35m=====================================\033[0m"
echo -e "\033[1;35mSystem Update Completed Successfully!\033[0m"
echo -e "\033[1;35m=====================================\033[0m"

