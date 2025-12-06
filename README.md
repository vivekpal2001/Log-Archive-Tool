# Log Archive Tool 📦

A simple yet powerful Bash script to compress and archive log directories with timestamped backups.

## Features

- 📁 Compresses entire log directories into `.tar.gz` archives
- ⏰ Automatically timestamps archives for easy tracking
- 🛡️ Input validation and error handling
- 📂 Organized storage in `archived_logs` directory
- 🚀 Lightweight and fast

## Prerequisites

- Bash shell (Linux, macOS, or WSL on Windows)
- `tar` command (pre-installed on most Unix-like systems)

## Installation

1. Clone this repository:
```bash
git clone https://github.com/vivekpal2001/Log-Archive-Tool.git
cd Log-Archive-Tool
```

2. Make the script executable:
```bash
chmod +x log-archive-tool.sh
```

## Usage

Run the script with a log directory path as an argument:

```bash
./log-archive-tool.sh /path/to/logs
```

### Example

```bash
./log-archive-tool.sh ./logs
```

This will create a compressed archive in the `archived_logs` directory with a name like:
```
log_archive_2025-12-06_14-30-45.tar.gz
```

## How It Works

1. **Validates Input**: Ensures exactly one argument (directory path) is provided
2. **Checks Directory**: Verifies the specified directory exists
3. **Creates Archive Directory**: Sets up `archived_logs` folder if it doesn't exist
4. **Generates Timestamp**: Creates a unique timestamp for the archive name
5. **Compresses Logs**: Uses `tar` to create a compressed `.tar.gz` archive
6. **Error Handling**: Exits gracefully if any step fails

## Project Structure

```
Log-Archive-Tool/
├── log-archive-tool.sh    # Main script
├── README.md              # Documentation
├── logs/                  # Sample logs directory
└── archived_logs/         # Generated archives (created automatically)
```

## Error Handling

The script includes comprehensive error checking:

- ❌ Missing or multiple arguments
- ❌ Non-existent directory path
- ❌ Failed archive creation

## Contributing

Contributions are welcome! Feel free to:

- Report bugs
- Suggest new features
- Submit pull requests


roadmap.sh link :- https://roadmap.sh/projects/log-archive-tool

## Acknowledgments

Built as a practical DevOps utility for log management and backup automation.

