// Header file for counters new instruction:
void resetBranchCounter(){
	__asm ("bcntrst");
	return;
}

void resetBranchTakenCounter(){
	__asm ("btcntrst");
	return;
}

void startBranchCounters(){
	__asm ("bcntson");
	return;
}

void stopBranchCounters(){
	__asm ("bcntsoff");
	return;
}

int readBranchCounter(){
	int x;
	__asm("bcntrd %0" : "=r"(x));
	return x;
}

int readBranchTakenCounter(){
	int x;
	__asm("btcntrd %0" : "=r"(x));
	return x;
}
