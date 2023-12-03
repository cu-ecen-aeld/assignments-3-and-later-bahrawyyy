#include <stdio.h>
#include <stdlib.h>
#include <syslog.h>

int main(int argc, char* argv[])
{
	// Open syslog with LOG_USER facility
	openlog(NULL, 0, LOG_USER);

	// argc --> number of arguments, argv[0] --> name of the executable
	
	
	if(argc != 3)
	{
		syslog(LOG_ERR, "Invalid Number of arguments: %d",argc);
		syslog(LOG_ERR, "Usage: '%s' <fileName> <string> ",argv[0]);
		closelog();
		return 1;
	}


	const char *fileName = argv[1];
	const char *writtenString = argv[2];
	
	
	FILE *file = fopen(fileName, "w");
	
	if(file != NULL)
	{
		fprintf(file, "%s", writtenString);
		fclose(file);
		
		// Log the write operation with syslog
		syslog(LOG_DEBUG, "Writing '%s' to '%s'", writtenString, fileName);
	}else{
		// Log unexpexted errors with syslog
		syslog(LOG_ERR, "Error opening file '%s'", fileName);
	}

	closelog();

	return 0;
}
