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
    unisims_ver_m_00000000001762375489_3501834183_init();
    unisims_ver_m_00000000001162476414_1323117156_init();
    unisims_ver_m_00000000002123152668_0970595058_init();
    unisims_ver_m_00000000002549801008_4245414866_init();
    unisims_ver_m_00000000003149700083_1668249201_init();
    unisims_ver_m_00000000003510477262_2316096324_init();
    work_m_00000000000605690665_3884464402_init();
    unisims_ver_m_00000000000924517765_3125220529_init();
    work_m_00000000001804853645_0991452614_init();
    work_m_00000000000951037694_3151274093_init();
    work_m_00000000000157102998_0800921550_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000157102998_0800921550");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
