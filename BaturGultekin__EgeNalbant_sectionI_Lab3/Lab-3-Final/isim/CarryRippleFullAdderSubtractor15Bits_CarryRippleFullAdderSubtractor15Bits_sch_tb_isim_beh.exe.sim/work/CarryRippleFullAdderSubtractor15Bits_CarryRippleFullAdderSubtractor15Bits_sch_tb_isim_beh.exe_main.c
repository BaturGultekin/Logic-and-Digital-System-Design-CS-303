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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    unisims_ver_m_00000000003510477262_2316096324_init();
    unisims_ver_m_00000000004258808807_3443532839_init();
    work_m_00000000003495856225_1492711523_init();
    unisims_ver_m_00000000000924517765_3125220529_init();
    work_m_00000000000794129045_1273320346_init();
    work_m_00000000003855825814_1215532743_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003855825814_1215532743");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
