# CLI Tool - Time Utility

The CLI Time Utility is a Bash script designed to offer a range of time-related functionalities via a terminal interface. This tool provides a simple yet versatile way to interact with time-based features, including a clock display, a stopwatch, and a timer.

## Features

### 1. Clock
The clock feature presents a live representation of the current time in an ASCII format. It continuously updates to reflect the current time.

### 2. Stopwatch
The stopwatch function provides a real-time display of elapsed time. It starts counting from zero and displays hours, minutes, and seconds.

### 3. Timer
Users can initiate a countdown timer for a specific duration in seconds. The tool will countdown the specified duration, displaying hours, minutes, and seconds until completion.

### 4. Pomodoro Timer
A Pomodoro timer implements the Pomodoro Technique by allowing users to initiate a 25-minute focus timer followed by a 5-minute break timer. The tool will countdown and signal when to switch between focus and break periods.


## Installation

To utilize this utility, follow these steps:

1. **Clone the Repository**

    ```bash
    git clone https://github.com/QuillAndCompile/cli_clock.git
    ```

2. **Make the Script Executable**

    ```bash
    chmod +x cli_tool.sh
    ```

## Usage

The script supports the following command-line options:

- `-c, --clock`: Display an ASCII clock.
- `-s, --stopwatch`: Start a stopwatch.
- `-t, --timer [SEC]`: Start a timer for the specified duration in seconds.
- `-h, --help`: Display help information.

### Examples

**To display the clock:**

```bash
./cli_tool.sh --clock
```

**To start a stopwatch:**

```bash
./cli_tool.sh --stopwatch
```

**To set a timer for 60 seconds:**

```bash
./cli_tool.sh --timer 60
```

**To set a pomodoro timer for 25 minutes:**
```bash
./cli_tool.sh --pomodoro
```

**For help:**

```bash
./cli_tool.sh --help
```

### Notes

- The stopwatch and timer will begin immediately upon execution.
- Ensure to provide a valid duration in seconds when using the timer function.

Feel free to modify the installation steps or any section to better suit your project's specific requirements.
You can also consider adding additional time-related features like date/time conversion utilities, countdown timers with recurring alarms, or calendar functionality. Extending the script's capabilities in a seamless manner would make it even more useful!
