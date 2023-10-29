# Terminal Clock Utility

The **Terminal Clock Utility** is a simple Bash script that provides various time-related functionalities for your terminal. Whether you need to check the current time, run a stopwatch, or set a timer, this utility has you covered.

## Table of Contents
- [Features](#features)
- [Usage](#usage)
- [Options](#options)
- [Examples](#examples)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Contributing](#contributing)
- [License](#license)

## Features
- Display the current time in an ASCII art clock format.
- Start a stopwatch to measure elapsed time.
- Set a timer with a specified duration in seconds.

## Usage

```bash
./clock.sh [OPTION]...
```

## Options
- `-c, --clock`: Display the current time in a stylish ASCII clock.
- `-s, --stopwatch`: Start a stopwatch to measure elapsed time.
- `-t, --timer [SEC]`: Start a timer for the specified duration in seconds.
- `-h, --help`: Display the help menu.

## Examples

1. Display the current time in an ASCII clock:
   ```bash
   ./clock.sh -c
   ```

2. Start a stopwatch:
   ```bash
   ./clock.sh -s
   ```

3. Set a timer for 60 seconds:
   ```bash
   ./clock.sh -t 60
   ```

4. Display the help menu:
   ```bash
   ./clock.sh -h
   ```

## Prerequisites
- This utility requires a Unix-like operating system with Bash support.

## Installation
1. Download the `clock.sh` script to your local machine.
2. Make the script executable:
   ```bash
   chmod +x clock.sh
   ```
3. Run the script using the examples provided in the Usage section.

## Contributing
Contributions to this project are welcome. If you have any suggestions, improvements, or bug fixes, please open an issue or a pull request on the [GitHub repository](https://github.com/your-repo).

Enjoy using this utility in your terminal! If you have any questions or encounter issues, please don't hesitate to reach out for support.
