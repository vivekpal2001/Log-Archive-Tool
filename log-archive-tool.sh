

if [ $# -ne 1 ]; then
    echo "Error: Please provide exactly one argument - the log file path."
    exit 1
fi

dirPath="$1"

if [ ! -d "$dirPath" ]; then
    echo "Error Directory '$dirPath' does not exist."
    exit 1
fi

scriptDir="$(cd "$(dirname "$0")" && pwd)"
archiveDir="${scriptDir}/archived_logs"

mkdir -p "$archiveDir"
    

timestamp=$(date +%Y-%m-%d_%H-%M-%S)
archiveName="log_archive_$timestamp.tar.gz"

echo "📦 Compressing logs from: $dirPath"
tar -czf "$archiveDir/$archiveName" "$dirPath"

if [ $? -eq 0 ]; then
    # Get file size
    size=$(ls -lh "$archivePath" | awk '{print $5}')
    
    echo "✅ Archive created successfully!"
    echo "📁 Location: $archivePath"
    echo "📊 Size: $size"
    
    # Log the operation
    echo "[${timestamp}] Archived: $(basename "$dirPath") -> ${archiveName} (${size})" >> "$archiveDir/archive.log"
    
else
    echo "❌ Failed to create archive"
    exit 1
fi