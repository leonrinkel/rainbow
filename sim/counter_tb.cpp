#include <stdlib.h>

#include "verilated.h"
#include "Vcounter_tb.h"

int main(int argc, char* argv[])
{
	VerilatedContext* context = new VerilatedContext;
	context->commandArgs(argc, argv);

	Verilated::traceEverOn(true);

	Vcounter_tb* top = new Vcounter_tb{context};
	while (!context->gotFinish())
	{
		context->timeInc(1);
		top->eval();

		context->timeInc(1);
		top->eval();
	}

	delete top;
	delete context;

	return EXIT_SUCCESS;
}
