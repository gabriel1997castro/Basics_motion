
#include <serialcom.h>
#include <stdio.h>

int main()
{
    SERIALPORTCONFIG serialPortConfig;
    unsigned char* data;
    int err;
    unsigned char aux;

    char command[] = {'#', '0', ' ', 'P', '1', '7', '0', '0', '\0'};

    // Init the serial port
    if((err = serialcom_init(&serialPortConfig, 1, "/dev/ttyS0", 115200)) != SERIALCOM_SUCCESS)
    {
        return err;
    }

    // Receive byte
    if((err = serialcom_receivebyte(&serialPortConfig, data, 1e4)) != SERIALCOM_SUCCESS)
    {
        return err;
    }

    // Send the same byte
    for (int i=0; i<9; i++)
    {
	aux = command[i];
	data = &aux;
    printf("%c", (unsigned char*) &data);
	serialcom_sendbyte(&serialPortConfig, (unsigned char*) &data);
    usleep(5);
    }

    // Close the serial port
    if((err = serialcom_close(&serialPortConfig)) != SERIALCOM_SUCCESS)
    {
        return err;
    }

    return 0;
}
