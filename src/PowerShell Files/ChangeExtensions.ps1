#
#  ChangeExtensions
#  Bulk change file extensions
#
#  Copyright © 2017 Michael Sammels. All rights reserved.
#

# Prompt for user input *the directory)
$cdDirectory = Read-Host -Prompt "Please enter the directory you wish to navigate to (or Enter for current)"
$cdExtension = Read-Host -Prompt "Please enter the extension you wish to use (minus the dot)"

# If the directory variable has been filled
if($cdDirectory) {
    # Then rename files in the directory mentioned above, with the extension also mentioned above
    Dir $cdDirectory\*.* | rename-item -newname {
        [io.path]::ChangeExtension($_.name, "$cdExtension")
    }
} elseif(!($cdDirectory)) {
    # If the directory was left blank, then use the current directory
    Dir *.* | rename-item -newname {
        [io.path]::ChangeExtension($_.name, "$cdExtension")
    }
}
