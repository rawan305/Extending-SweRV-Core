// Header file for counters new instruction:
void resetBranchCounter(){
	__asm ("bcntrst");
}

void resetBranchTakenCounter(){
	__asm ("btcntrst");
}

void startBranchCounters(){
	__asm ("bcntson");
}

void stopBranchCounters(){
	__asm ("bcntsoff");
}

int readBranchCounter(){
	int x;
	__asm__ __volatile__ ("bcntrd x6" : "=r"(x));
	return x;
}

int readBranchTakenCounter(){
	int x;
	__asm__ __volatile__ ("btcntrd x6" : "=r"(x));
	return x;
}

#define BRANCH_COUNTERS_SART ({\
	resetBranchCounter();\
	resetBranchTakenCounter();\
	startBranchCounters();\
})

#define BRANCH_COUNTERS_END ({\
	stopBranchCounters();\
	printf("Branch Counter = %d\n", readBranchCounter()); \
	printf("Branch Taken Counter = %d\n", readBranchTakenCounter());\
})

#define BRANCH_COUNTERS_END_EEPRINT ({\
	stopBranchCounters();\
	ee_printf("Branch Counter = %d\n", readBranchCounter()); \
	ee_printf("Branch Taken Counter = %d\n", readBranchTakenCounter());\
})
