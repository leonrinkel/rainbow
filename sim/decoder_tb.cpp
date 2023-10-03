#include <stdlib.h>

#include "verilated.h"
#include "Vdecoder_tb.h"

int main(int argc, char* argv[])
{
	VerilatedContext* context = new VerilatedContext;
	context->commandArgs(argc, argv);

	Verilated::traceEverOn(true);

	Vdecoder_tb* top = new Vdecoder_tb{context};
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
