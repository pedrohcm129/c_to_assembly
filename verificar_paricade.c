#include <stdio.h>
#include <stdlib.h>

int main() {
	int numero;
	scanf("%d", &numero);

	if (numero % 2 == 1)
		printf("Ímpar");
	else
		printf("Par");

	return 0;
}
