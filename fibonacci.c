#include <stdio.h>
#include <stdlib.h>

int main() {
	int numero, primeiro = 0, segundo = 1, proximo;
	scanf("%d", &numero);

	for (int i = 0; i < numero; i++) {
		if (i <= 1)
			proximo = i;
		else
			proximo = primeiro + segundo;
			primeiro = segundo;
			segundo = proximo;
	}

	printf("%d", proximo);

	return 0;
}

