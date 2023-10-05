#include <stdlib.h>

#include "verilated.h"
#include "Vsegment_tb.h"

int main(int argc, char* argv[])
{
	VerilatedContext* context = new VerilatedContext;
	context->commandArgs(argc, argv);

	Verilated::traceEverOn(true);

	Vsegment_tb* top = new Vsegment_tb{context};
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
