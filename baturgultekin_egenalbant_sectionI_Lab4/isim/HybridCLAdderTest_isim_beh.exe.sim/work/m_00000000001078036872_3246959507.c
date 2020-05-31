/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Xilinx/Projects/baturgultekin_egenalbant_sectionI_Lab4/HybridCLAdderTest.v";
static unsigned int ng1[] = {8192U, 0U};
static unsigned int ng2[] = {4096U, 0U};
static int ng3[] = {1, 0};



static void Initial_47_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(47, ng0);

LAB2:    xsi_set_current_line(49, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1768);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 15);
    xsi_set_current_line(50, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 1928);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 15);
    xsi_set_current_line(51, ng0);
    t1 = ((char*)((ng3)));
    t2 = (t0 + 2088);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}


extern void work_m_00000000001078036872_3246959507_init()
{
	static char *pe[] = {(void *)Initial_47_0};
	xsi_register_didat("work_m_00000000001078036872_3246959507", "isim/HybridCLAdderTest_isim_beh.exe.sim/work/m_00000000001078036872_3246959507.didat");
	xsi_register_executes(pe);
}
