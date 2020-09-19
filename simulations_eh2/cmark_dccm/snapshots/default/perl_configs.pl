#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by nimrodb on Sat Sep 19 23:08:35 IDT 2020
# 
#  cmd:    swerv -target=default 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'triggers' => [
                            {
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ]
                            },
                            {
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ]
                            },
                            {
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ]
                            },
                            {
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ]
                            }
                          ],
            'pic' => {
                       'pic_meie_count' => 127,
                       'pic_meigwclr_mask' => '0x0',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_meip_count' => 4,
                       'pic_2cycle' => '1',
                       'pic_meigwclr_count' => 127,
                       'pic_meipl_offset' => '0x0000',
                       'pic_meidels_count' => 127,
                       'pic_total_int' => 127,
                       'pic_int_words' => 4,
                       'pic_meipt_mask' => '0x0',
                       'pic_offset' => '0xc0000',
                       'pic_meigwctrl_count' => 127,
                       'pic_meipt_count' => 127,
                       'pic_meigwctrl_mask' => '0x3',
                       'pic_mpiccfg_count' => 1,
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_base_addr' => '0xf00c0000',
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meidels_mask' => '0x1',
                       'pic_bits' => 15,
                       'pic_mpiccfg_mask' => '0x1',
                       'pic_meipl_count' => 127,
                       'pic_meip_offset' => '0x1000',
                       'pic_region' => '0xf',
                       'pic_meitp_count' => 127,
                       'pic_total_int_plus1' => 128,
                       'pic_meipt_offset' => '0x3004',
                       'pic_meie_mask' => '0x1',
                       'pic_meitp_mask' => '0x0',
                       'pic_meipl_mask' => '0xf',
                       'pic_size' => 32,
                       'pic_meie_offset' => '0x2000',
                       'pic_meitp_offset' => '0x1800',
                       'pic_meip_mask' => '0x0'
                     },
            'num_mmode_perf_regs' => '4',
            'reset_vec' => '0x80000000',
            'dccm' => {
                        'dccm_fdata_width' => 39,
                        'dccm_num_banks_8' => '',
                        'dccm_region' => '0xf',
                        'dccm_offset' => '0x40000',
                        'dccm_byte_width' => '4',
                        'dccm_size_64' => '',
                        'dccm_enable' => '1',
                        'dccm_bank_bits' => 3,
                        'dccm_sadr' => '0xf0040000',
                        'dccm_ecc_width' => 7,
                        'dccm_index_bits' => 11,
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_data_width' => 32,
                        'dccm_rows' => '2048',
                        'dccm_data_cell' => 'ram_2048x39',
                        'dccm_bits' => 16,
                        'dccm_reserved' => '0x1400',
                        'lsu_sb_bits' => 16,
                        'dccm_size' => 64,
                        'dccm_num_banks' => '8',
                        'dccm_width_bits' => 2
                      },
            'csr' => {
                       'mhartstart' => {
                                         'shared' => 'true',
                                         'exists' => 'true',
                                         'mask' => '0x0',
                                         'reset' => '0x1',
                                         'comment' => 'Hart start mask',
                                         'number' => '0x7fc'
                                       },
                       'mstatus' => {
                                      'exists' => 'true',
                                      'mask' => '0x88',
                                      'reset' => '0x1800'
                                    },
                       'mhpmcounter6' => {
                                           'mask' => '0xffffffff',
                                           'exists' => 'true',
                                           'reset' => '0x0'
                                         },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'mfdc' => {
                                   'number' => '0x7f9',
                                   'mask' => '0x00070f4d',
                                   'exists' => 'true',
                                   'shared' => 'true',
                                   'reset' => '0x00070040'
                                 },
                       'mhpmcounter5' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'mfdht' => {
                                    'reset' => '0x0',
                                    'mask' => '0x0000003f',
                                    'shared' => 'true',
                                    'exists' => 'true',
                                    'number' => '0x7ce',
                                    'comment' => 'Force Debug Halt Threshold'
                                  },
                       'dicad1' => {
                                     'debug' => 'true',
                                     'number' => '0x7ca',
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'mask' => '0x3'
                                   },
                       'mhpmevent5' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter3' => {
                                           'mask' => '0xffffffff',
                                           'exists' => 'true',
                                           'reset' => '0x0'
                                         },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'mcountinhibit' => {
                                            'reset' => '0x0',
                                            'mask' => '0x7d',
                                            'poke_mask' => '0x7d',
                                            'exists' => 'true',
                                            'commnet' => 'Performance counter inhibit. One bit per counter.'
                                          },
                       'mhpmevent3' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'dcsr' => {
                                   'debug' => 'true',
                                   'exists' => 'true',
                                   'poke_mask' => '0x00008dcc',
                                   'mask' => '0x00008c04',
                                   'reset' => '0x40000003'
                                 },
                       'misa' => {
                                   'reset' => '0x40001105',
                                   'exists' => 'true',
                                   'mask' => '0x0'
                                 },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'mfdhs' => {
                                    'number' => '0x7cf',
                                    'comment' => 'Force Debug Halt Status',
                                    'reset' => '0x0',
                                    'mask' => '0x00000003',
                                    'exists' => 'true'
                                  },
                       'micect' => {
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'mask' => '0xffffffff',
                                     'number' => '0x7f0'
                                   },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'mhartid' => {
                                      'reset' => '0x0',
                                      'exists' => 'true',
                                      'mask' => '0x0',
                                      'poke_mask' => '0xfffffff0'
                                    },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'meicurpl' => {
                                       'comment' => 'External interrupt current priority level.',
                                       'number' => '0xbcc',
                                       'mask' => '0xf',
                                       'exists' => 'true',
                                       'reset' => '0x0'
                                     },
                       'mitbnd0' => {
                                      'reset' => '0xffffffff',
                                      'mask' => '0xffffffff',
                                      'exists' => 'true',
                                      'number' => '0x7d3'
                                    },
                       'mcpc' => {
                                   'number' => '0x7c2',
                                   'comment' => 'Core pause',
                                   'reset' => '0x0',
                                   'exists' => 'true',
                                   'mask' => '0x0'
                                 },
                       'dicawics' => {
                                       'number' => '0x7c8',
                                       'debug' => 'true',
                                       'comment' => 'Cache diagnostics.',
                                       'reset' => '0x0',
                                       'mask' => '0x0130fffc',
                                       'exists' => 'true'
                                     },
                       'mitctl0' => {
                                      'number' => '0x7d4',
                                      'mask' => '0x00000007',
                                      'exists' => 'true',
                                      'reset' => '0x1'
                                    },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter4h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'mhpmcounter5h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'mhpmcounter3h' => {
                                            'mask' => '0xffffffff',
                                            'exists' => 'true',
                                            'reset' => '0x0'
                                          },
                       'mcgc' => {
                                   'number' => '0x7f8',
                                   'poke_mask' => '0x000001ff',
                                   'mask' => '0x000001ff',
                                   'shared' => 'true',
                                   'exists' => 'true',
                                   'reset' => '0x0'
                                 },
                       'mdccmect' => {
                                       'mask' => '0xffffffff',
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'number' => '0x7f2'
                                     },
                       'mhpmcounter6h' => {
                                            'mask' => '0xffffffff',
                                            'exists' => 'true',
                                            'reset' => '0x0'
                                          },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'mhpmevent4' => {
                                         'reset' => '0x0',
                                         'exists' => 'true',
                                         'mask' => '0xffffffff'
                                       },
                       'mitcnt1' => {
                                      'number' => '0x7d5',
                                      'exists' => 'true',
                                      'mask' => '0xffffffff',
                                      'reset' => '0x0'
                                    },
                       'mimpid' => {
                                     'exists' => 'true',
                                     'mask' => '0x0',
                                     'reset' => '0x2'
                                   },
                       'dmst' => {
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'number' => '0x7c4',
                                   'debug' => 'true',
                                   'mask' => '0x0',
                                   'exists' => 'true',
                                   'reset' => '0x0'
                                 },
                       'mitctl1' => {
                                      'reset' => '0x1',
                                      'mask' => '0x0000000f',
                                      'exists' => 'true',
                                      'number' => '0x7d7'
                                    },
                       'dicad0' => {
                                     'number' => '0x7c9',
                                     'debug' => 'true',
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0',
                                     'mask' => '0xffffffff',
                                     'exists' => 'true'
                                   },
                       'dicago' => {
                                     'debug' => 'true',
                                     'number' => '0x7cb',
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'mask' => '0x0'
                                   },
                       'mnmipdel' => {
                                       'mask' => '0x1',
                                       'exists' => 'true',
                                       'shared' => 'true',
                                       'reset' => '0x1',
                                       'comment' => 'NMI pin delegation',
                                       'number' => '0x7fe'
                                     },
                       'mhpmevent6' => {
                                         'mask' => '0xffffffff',
                                         'exists' => 'true',
                                         'reset' => '0x0'
                                       },
                       'meipt' => {
                                    'number' => '0xbc9',
                                    'comment' => 'External interrupt priority threshold.',
                                    'reset' => '0x0',
                                    'mask' => '0xf',
                                    'exists' => 'true'
                                  },
                       'marchid' => {
                                      'reset' => '0x00000011',
                                      'mask' => '0x0',
                                      'exists' => 'true'
                                    },
                       'mpmc' => {
                                   'mask' => '0x2',
                                   'exists' => 'true',
                                   'reset' => '0x2',
                                   'number' => '0x7c6'
                                 },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'tselect' => {
                                      'mask' => '0x3',
                                      'exists' => 'true',
                                      'reset' => '0x0'
                                    },
                       'meicidpl' => {
                                       'number' => '0xbcb',
                                       'comment' => 'External interrupt claim id priority level.',
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'mask' => '0xf'
                                     },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'miccmect' => {
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'mask' => '0xffffffff',
                                       'number' => '0x7f1'
                                     },
                       'mrac' => {
                                   'exists' => 'true',
                                   'shared' => 'true',
                                   'mask' => '0xffffffff',
                                   'reset' => '0x0',
                                   'comment' => 'Memory region io and cache control.',
                                   'number' => '0x7c0'
                                 },
                       'mscause' => {
                                      'exists' => 'true',
                                      'mask' => '0x0000000f',
                                      'reset' => '0x0',
                                      'number' => '0x7ff'
                                    },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'mvendorid' => {
                                        'reset' => '0x45',
                                        'exists' => 'true',
                                        'mask' => '0x0'
                                      },
                       'mhpmcounter4' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'mie' => {
                                  'reset' => '0x0',
                                  'mask' => '0x70000888',
                                  'exists' => 'true'
                                },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'mitbnd1' => {
                                      'reset' => '0xffffffff',
                                      'mask' => '0xffffffff',
                                      'exists' => 'true',
                                      'number' => '0x7d6'
                                    },
                       'mhartnum' => {
                                       'shared' => 'true',
                                       'exists' => 'true',
                                       'mask' => '0x0',
                                       'reset' => '0x1',
                                       'comment' => 'Hart count',
                                       'number' => '0xfc4'
                                     },
                       'mip' => {
                                  'reset' => '0x0',
                                  'exists' => 'true',
                                  'mask' => '0x0',
                                  'poke_mask' => '0x70000888'
                                },
                       'mitcnt0' => {
                                      'reset' => '0x0',
                                      'mask' => '0xffffffff',
                                      'exists' => 'true',
                                      'number' => '0x7d2'
                                    },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     }
                     },
            'bus' => {
                       'ifu_bus_tag' => '4',
                       'dma_bus_tag' => 1,
                       'lsu_bus_prty' => '2',
                       'sb_bus_prty' => '2',
                       'lsu_bus_tag' => '4',
                       'ifu_bus_id' => 1,
                       'lsu_bus_id' => 1,
                       'dma_bus_id' => 1,
                       'bus_prty_default' => '3',
                       'dma_bus_prty' => '2',
                       'sb_bus_id' => 1,
                       'ifu_bus_prty' => 2,
                       'sb_bus_tag' => 1
                     },
            'iccm' => {
                        'iccm_region' => '0xe',
                        'iccm_rows' => '4096',
                        'iccm_sadr' => '0xee000000',
                        'iccm_bank_index_lo' => 4,
                        'iccm_bank_hi' => 3,
                        'iccm_reserved' => '0x1000',
                        'iccm_offset' => '0xe000000',
                        'iccm_index_bits' => 12,
                        'iccm_bits' => 16,
                        'iccm_eadr' => '0xee00ffff',
                        'iccm_size_64' => '',
                        'iccm_size' => 64,
                        'iccm_data_cell' => 'ram_4096x39',
                        'iccm_enable' => 1,
                        'iccm_num_banks' => '4',
                        'iccm_bank_bits' => 2,
                        'iccm_num_banks_4' => ''
                      },
            'physical' => '1',
            'config_key' => '32\'hdeadbeef',
            'core' => {
                        'fast_interrupt_redirect' => '1',
                        'fpga_optimize' => '0',
                        'lsu_num_nbload_width' => '3',
                        'icache_only' => 'derived',
                        'timer_legal_en' => '1',
                        'lsu_stbuf_depth' => '10',
                        'no_iccm_no_icache' => 'derived',
                        'iccm_icache' => 1,
                        'num_threads' => 1,
                        'dma_buf_depth' => '5',
                        'lsu_num_nbload' => '8',
                        'iccm_only' => 'derived'
                      },
            'nmi_vec' => '0x11110000',
            'xlen' => 32,
            'memmap' => {
                          'unused_region0' => '0x00000000',
                          'unused_region2' => '0x20000000',
                          'unused_region1' => '0x10000000',
                          'external_prog' => '0xb0000000',
                          'unused_region3' => '0x30000000',
                          'unused_region7' => '0x70000000',
                          'external_data' => '0xc0580000',
                          'external_mem_hole' => '0x90000000',
                          'serialio' => '0xd0580000',
                          'unused_region6' => '0x60000000',
                          'unused_region4' => '0x40000000',
                          'unused_region5' => '0x50000000',
                          'debug_sb_mem' => '0xb0580000',
                          'external_data_1' => '0x00000000'
                        },
            'numiregs' => '32',
            'testbench' => {
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'lderr_rollback' => '1',
                             'sterr_rollback' => '0',
                             'RV_TOP' => '`TOP.rvtop',
                             'assert_on' => '',
                             'datawidth' => '64',
                             'build_axi4' => 1,
                             'TOP' => 'tb_top',
                             'SDVT_AHB' => '1',
                             'ext_addrwidth' => '32',
                             'ext_datawidth' => '64',
                             'clock_period' => '100',
                             'build_axi_native' => 1
                           },
            'protection' => {
                              'data_access_addr5' => '0x00000000',
                              'data_access_enable7' => '0x0',
                              'data_access_enable4' => '0x0',
                              'inst_access_addr1' => '0xc0000000',
                              'inst_access_mask5' => '0xffffffff',
                              'data_access_mask5' => '0xffffffff',
                              'data_access_mask6' => '0xffffffff',
                              'inst_access_addr4' => '0x00000000',
                              'data_access_mask7' => '0xffffffff',
                              'inst_access_mask1' => '0x3fffffff',
                              'inst_access_enable2' => '1',
                              'inst_access_mask3' => '0x0fffffff',
                              'inst_access_mask4' => '0xffffffff',
                              'data_access_addr1' => '0xc0000000',
                              'data_access_mask3' => '0x0fffffff',
                              'inst_access_enable5' => '0x0',
                              'data_access_mask0' => '0x7fffffff',
                              'data_access_enable1' => '1',
                              'data_access_addr7' => '0x00000000',
                              'inst_access_addr6' => '0x00000000',
                              'data_access_enable5' => '0x0',
                              'inst_access_addr5' => '0x00000000',
                              'data_access_addr4' => '0x00000000',
                              'data_access_addr6' => '0x00000000',
                              'inst_access_enable1' => '1',
                              'data_access_enable2' => '1',
                              'data_access_mask2' => '0x1fffffff',
                              'inst_access_enable7' => '0x0',
                              'data_access_enable0' => '1',
                              'inst_access_enable6' => '0x0',
                              'inst_access_addr0' => '0x0',
                              'data_access_addr2' => '0xa0000000',
                              'inst_access_enable0' => '1',
                              'data_access_mask4' => '0xffffffff',
                              'inst_access_mask6' => '0xffffffff',
                              'inst_access_addr3' => '0x80000000',
                              'inst_access_enable3' => '1',
                              'inst_access_mask7' => '0xffffffff',
                              'data_access_addr3' => '0x80000000',
                              'data_access_addr0' => '0x0',
                              'inst_access_mask2' => '0x1fffffff',
                              'data_access_enable6' => '0x0',
                              'data_access_enable3' => '1',
                              'inst_access_enable4' => '0x0',
                              'inst_access_addr2' => '0xa0000000',
                              'inst_access_addr7' => '0x00000000',
                              'inst_access_mask0' => '0x7fffffff',
                              'data_access_mask1' => '0x3fffffff'
                            },
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'target' => 'default',
            'harts' => 1,
            'max_mmode_perf_event' => '516',
            'bht' => {
                       'bht_ghr_pad' => 'fghr[2:0],3\'b0',
                       'bht_ghr_size' => 7,
                       'bht_size' => 512,
                       'bht_ghr_hash_1' => '',
                       'bht_ghr_pad2' => 'fghr[3:0],2\'b0',
                       'bht_addr_hi' => 9,
                       'bht_ghr_range' => '6:0',
                       'bht_array_depth' => 128,
                       'bht_addr_lo' => '3',
                       'bht_hash_string' => '{hashin[7+2:5]^ghr[7-1:2], ghr[1:0]}// cf2'
                     },
            'btb' => {
                       'btb_array_depth' => 128,
                       'btb_btag_fold' => 0,
                       'btb_index3_hi' => 23,
                       'btb_index2_lo' => 10,
                       'btb_index3_lo' => 17,
                       'btb_addr_hi' => 9,
                       'btb_btag_size' => 5,
                       'btb_size' => 512,
                       'btb_index1_lo' => '3',
                       'btb_addr_lo' => '3',
                       'btb_index1_hi' => 9,
                       'btb_fold2_index_hash' => 0,
                       'btb_index2_hi' => 16
                     },
            'tec_rv_icg' => 'clockhdr',
            'icache' => {
                          'icache_banks_way' => 2,
                          'icache_enable' => 1,
                          'icache_2banks' => '1',
                          'icache_fdata_width' => 71,
                          'icache_tag_depth' => 128,
                          'icache_data_cell' => 'ram_512x71',
                          'icache_num_beats' => 8,
                          'icache_beat_bits' => 3,
                          'icache_data_width' => 64,
                          'icache_bank_width' => 8,
                          'icache_beat_addr_hi' => 5,
                          'icache_scnd_last' => 6,
                          'icache_num_lines_way' => '128',
                          'icache_data_depth' => '512',
                          'icache_tag_cell' => 'ram_128x25',
                          'icache_status_bits' => 3,
                          'icache_num_lines' => 512,
                          'icache_bank_lo' => 3,
                          'icache_tag_index_lo' => 6,
                          'icache_index_hi' => 12,
                          'icache_data_index_lo' => 4,
                          'icache_num_ways' => 4,
                          'icache_size' => 32,
                          'icache_ecc' => '1',
                          'icache_ln_sz' => 64,
                          'icache_tag_lo' => 13,
                          'icache_num_lines_bank' => 64,
                          'icache_bank_hi' => 3,
                          'icache_bank_bits' => 1
                        },
            'even_odd_trigger_chains' => 'true',
            'regwidth' => '32'
          );
1;
