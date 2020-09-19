#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by nimrodb on Sat Sep 19 23:08:12 IDT 2020
# 
#  cmd:    swerv -target=default 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'core' => {
                        'lsu_num_nbload_width' => '3',
                        'iccm_only' => 'derived',
                        'lsu_stbuf_depth' => '10',
                        'fpga_optimize' => '0',
                        'fast_interrupt_redirect' => '1',
                        'timer_legal_en' => '1',
                        'num_threads' => 1,
                        'dma_buf_depth' => '5',
                        'iccm_icache' => 1,
                        'no_iccm_no_icache' => 'derived',
                        'lsu_num_nbload' => '8',
                        'icache_only' => 'derived'
                      },
            'csr' => {
                       'mhpmevent4' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'mimpid' => {
                                     'mask' => '0x0',
                                     'exists' => 'true',
                                     'reset' => '0x2'
                                   },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'mip' => {
                                  'reset' => '0x0',
                                  'poke_mask' => '0x70000888',
                                  'exists' => 'true',
                                  'mask' => '0x0'
                                },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'mnmipdel' => {
                                       'reset' => '0x1',
                                       'exists' => 'true',
                                       'mask' => '0x1',
                                       'number' => '0x7fe',
                                       'shared' => 'true',
                                       'comment' => 'NMI pin delegation'
                                     },
                       'mitbnd1' => {
                                      'reset' => '0xffffffff',
                                      'exists' => 'true',
                                      'number' => '0x7d6',
                                      'mask' => '0xffffffff'
                                    },
                       'tselect' => {
                                      'reset' => '0x0',
                                      'mask' => '0x3',
                                      'exists' => 'true'
                                    },
                       'mhpmevent6' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'mfdhs' => {
                                    'comment' => 'Force Debug Halt Status',
                                    'exists' => 'true',
                                    'mask' => '0x00000003',
                                    'number' => '0x7cf',
                                    'reset' => '0x0'
                                  },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'dmst' => {
                                   'mask' => '0x0',
                                   'debug' => 'true',
                                   'exists' => 'true',
                                   'number' => '0x7c4',
                                   'reset' => '0x0',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.'
                                 },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'mrac' => {
                                   'shared' => 'true',
                                   'comment' => 'Memory region io and cache control.',
                                   'number' => '0x7c0',
                                   'exists' => 'true',
                                   'mask' => '0xffffffff',
                                   'reset' => '0x0'
                                 },
                       'mdccmect' => {
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'number' => '0x7f2',
                                       'mask' => '0xffffffff'
                                     },
                       'mhpmcounter4h' => {
                                            'reset' => '0x0',
                                            'exists' => 'true',
                                            'mask' => '0xffffffff'
                                          },
                       'mvendorid' => {
                                        'mask' => '0x0',
                                        'exists' => 'true',
                                        'reset' => '0x45'
                                      },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'mcountinhibit' => {
                                            'commnet' => 'Performance counter inhibit. One bit per counter.',
                                            'poke_mask' => '0x7d',
                                            'reset' => '0x0',
                                            'exists' => 'true',
                                            'mask' => '0x7d'
                                          },
                       'mitctl0' => {
                                      'mask' => '0x00000007',
                                      'exists' => 'true',
                                      'number' => '0x7d4',
                                      'reset' => '0x1'
                                    },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'dicago' => {
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0',
                                     'number' => '0x7cb',
                                     'debug' => 'true',
                                     'exists' => 'true',
                                     'mask' => '0x0'
                                   },
                       'mhpmevent3' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'mfdht' => {
                                    'comment' => 'Force Debug Halt Threshold',
                                    'shared' => 'true',
                                    'reset' => '0x0',
                                    'number' => '0x7ce',
                                    'exists' => 'true',
                                    'mask' => '0x0000003f'
                                  },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'meicurpl' => {
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'mask' => '0xf',
                                       'number' => '0xbcc',
                                       'comment' => 'External interrupt current priority level.'
                                     },
                       'mstatus' => {
                                      'mask' => '0x88',
                                      'exists' => 'true',
                                      'reset' => '0x1800'
                                    },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'mpmc' => {
                                   'number' => '0x7c6',
                                   'exists' => 'true',
                                   'mask' => '0x2',
                                   'reset' => '0x2'
                                 },
                       'mhpmcounter6h' => {
                                            'reset' => '0x0',
                                            'exists' => 'true',
                                            'mask' => '0xffffffff'
                                          },
                       'misa' => {
                                   'mask' => '0x0',
                                   'exists' => 'true',
                                   'reset' => '0x40001105'
                                 },
                       'dicad1' => {
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0',
                                     'number' => '0x7ca',
                                     'debug' => 'true',
                                     'exists' => 'true',
                                     'mask' => '0x3'
                                   },
                       'mfdc' => {
                                   'shared' => 'true',
                                   'reset' => '0x00070040',
                                   'exists' => 'true',
                                   'number' => '0x7f9',
                                   'mask' => '0x00070f4d'
                                 },
                       'marchid' => {
                                      'reset' => '0x00000011',
                                      'mask' => '0x0',
                                      'exists' => 'true'
                                    },
                       'mhartid' => {
                                      'mask' => '0x0',
                                      'exists' => 'true',
                                      'poke_mask' => '0xfffffff0',
                                      'reset' => '0x0'
                                    },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'meipt' => {
                                    'exists' => 'true',
                                    'number' => '0xbc9',
                                    'mask' => '0xf',
                                    'reset' => '0x0',
                                    'comment' => 'External interrupt priority threshold.'
                                  },
                       'mitctl1' => {
                                      'exists' => 'true',
                                      'mask' => '0x0000000f',
                                      'number' => '0x7d7',
                                      'reset' => '0x1'
                                    },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'mhpmcounter4' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'mhpmcounter3h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          },
                       'micect' => {
                                     'mask' => '0xffffffff',
                                     'exists' => 'true',
                                     'number' => '0x7f0',
                                     'reset' => '0x0'
                                   },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'dicad0' => {
                                     'reset' => '0x0',
                                     'mask' => '0xffffffff',
                                     'debug' => 'true',
                                     'exists' => 'true',
                                     'number' => '0x7c9',
                                     'comment' => 'Cache diagnostics.'
                                   },
                       'dcsr' => {
                                   'reset' => '0x40000003',
                                   'poke_mask' => '0x00008dcc',
                                   'mask' => '0x00008c04',
                                   'debug' => 'true',
                                   'exists' => 'true'
                                 },
                       'mhartstart' => {
                                         'comment' => 'Hart start mask',
                                         'shared' => 'true',
                                         'number' => '0x7fc',
                                         'exists' => 'true',
                                         'mask' => '0x0',
                                         'reset' => '0x1'
                                       },
                       'mcgc' => {
                                   'exists' => 'true',
                                   'mask' => '0x000001ff',
                                   'number' => '0x7f8',
                                   'reset' => '0x0',
                                   'poke_mask' => '0x000001ff',
                                   'shared' => 'true'
                                 },
                       'mcpc' => {
                                   'reset' => '0x0',
                                   'mask' => '0x0',
                                   'exists' => 'true',
                                   'number' => '0x7c2',
                                   'comment' => 'Core pause'
                                 },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'mitcnt1' => {
                                      'reset' => '0x0',
                                      'exists' => 'true',
                                      'number' => '0x7d5',
                                      'mask' => '0xffffffff'
                                    },
                       'mhpmcounter5h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'mitcnt0' => {
                                      'mask' => '0xffffffff',
                                      'exists' => 'true',
                                      'number' => '0x7d2',
                                      'reset' => '0x0'
                                    },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'mhpmevent5' => {
                                         'reset' => '0x0',
                                         'exists' => 'true',
                                         'mask' => '0xffffffff'
                                       },
                       'mhpmcounter6' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'mhpmcounter5' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'mie' => {
                                  'mask' => '0x70000888',
                                  'exists' => 'true',
                                  'reset' => '0x0'
                                },
                       'meicidpl' => {
                                       'comment' => 'External interrupt claim id priority level.',
                                       'exists' => 'true',
                                       'number' => '0xbcb',
                                       'mask' => '0xf',
                                       'reset' => '0x0'
                                     },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'mitbnd0' => {
                                      'number' => '0x7d3',
                                      'exists' => 'true',
                                      'mask' => '0xffffffff',
                                      'reset' => '0xffffffff'
                                    },
                       'mhartnum' => {
                                       'reset' => '0x1',
                                       'number' => '0xfc4',
                                       'exists' => 'true',
                                       'mask' => '0x0',
                                       'comment' => 'Hart count',
                                       'shared' => 'true'
                                     },
                       'mscause' => {
                                      'exists' => 'true',
                                      'mask' => '0x0000000f',
                                      'number' => '0x7ff',
                                      'reset' => '0x0'
                                    },
                       'mhpmcounter3' => {
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff',
                                           'exists' => 'true'
                                         },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'miccmect' => {
                                       'reset' => '0x0',
                                       'mask' => '0xffffffff',
                                       'exists' => 'true',
                                       'number' => '0x7f1'
                                     },
                       'dicawics' => {
                                       'debug' => 'true',
                                       'exists' => 'true',
                                       'number' => '0x7c8',
                                       'mask' => '0x0130fffc',
                                       'reset' => '0x0',
                                       'comment' => 'Cache diagnostics.'
                                     },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     }
                     },
            'testbench' => {
                             'SDVT_AHB' => '1',
                             'ext_addrwidth' => '32',
                             'datawidth' => '64',
                             'sterr_rollback' => '0',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'lderr_rollback' => '1',
                             'assert_on' => '',
                             'RV_TOP' => '`TOP.rvtop',
                             'build_axi_native' => 1,
                             'TOP' => 'tb_top',
                             'build_axi4' => 1,
                             'clock_period' => '100',
                             'ext_datawidth' => '64'
                           },
            'regwidth' => '32',
            'memmap' => {
                          'external_data_1' => '0x00000000',
                          'unused_region1' => '0x10000000',
                          'unused_region2' => '0x20000000',
                          'external_mem_hole' => '0x90000000',
                          'unused_region6' => '0x60000000',
                          'debug_sb_mem' => '0xb0580000',
                          'unused_region5' => '0x50000000',
                          'unused_region3' => '0x30000000',
                          'unused_region4' => '0x40000000',
                          'external_data' => '0xc0580000',
                          'unused_region7' => '0x70000000',
                          'unused_region0' => '0x00000000',
                          'serialio' => '0xd0580000',
                          'external_prog' => '0xb0000000'
                        },
            'target' => 'default',
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'pic' => {
                       'pic_int_words' => 4,
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_meipt_offset' => '0x3004',
                       'pic_total_int_plus1' => 128,
                       'pic_total_int' => 127,
                       'pic_meie_offset' => '0x2000',
                       'pic_meie_mask' => '0x1',
                       'pic_meipt_count' => 127,
                       'pic_region' => '0xf',
                       'pic_meitp_count' => 127,
                       'pic_mpiccfg_count' => 1,
                       'pic_meipl_offset' => '0x0000',
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_size' => 32,
                       'pic_meidels_count' => 127,
                       'pic_meie_count' => 127,
                       'pic_meipt_mask' => '0x0',
                       'pic_mpiccfg_mask' => '0x1',
                       'pic_meitp_mask' => '0x0',
                       'pic_meip_mask' => '0x0',
                       'pic_meip_count' => 4,
                       'pic_meigwclr_count' => 127,
                       'pic_meigwctrl_count' => 127,
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_meidels_mask' => '0x1',
                       'pic_base_addr' => '0xf00c0000',
                       'pic_meigwclr_mask' => '0x0',
                       'pic_offset' => '0xc0000',
                       'pic_bits' => 15,
                       'pic_meip_offset' => '0x1000',
                       'pic_meigwctrl_mask' => '0x3',
                       'pic_meipl_count' => 127,
                       'pic_meipl_mask' => '0xf',
                       'pic_2cycle' => '1',
                       'pic_meitp_offset' => '0x1800'
                     },
            'reset_vec' => '0x80000000',
            'config_key' => '32\'hdeadbeef',
            'bus' => {
                       'sb_bus_tag' => 1,
                       'dma_bus_id' => 1,
                       'dma_bus_prty' => '2',
                       'sb_bus_prty' => '2',
                       'lsu_bus_prty' => '2',
                       'ifu_bus_tag' => '4',
                       'lsu_bus_id' => 1,
                       'sb_bus_id' => 1,
                       'lsu_bus_tag' => '4',
                       'ifu_bus_prty' => 2,
                       'ifu_bus_id' => 1,
                       'bus_prty_default' => '3',
                       'dma_bus_tag' => 1
                     },
            'physical' => '1',
            'nmi_vec' => '0x11110000',
            'xlen' => 32,
            'iccm' => {
                        'iccm_num_banks_4' => '',
                        'iccm_bank_index_lo' => 4,
                        'iccm_offset' => '0xe000000',
                        'iccm_reserved' => '0x1000',
                        'iccm_num_banks' => '4',
                        'iccm_data_cell' => 'ram_4096x39',
                        'iccm_bank_hi' => 3,
                        'iccm_size' => 64,
                        'iccm_index_bits' => 12,
                        'iccm_enable' => 1,
                        'iccm_size_64' => '',
                        'iccm_rows' => '4096',
                        'iccm_region' => '0xe',
                        'iccm_eadr' => '0xee00ffff',
                        'iccm_bank_bits' => 2,
                        'iccm_sadr' => '0xee000000',
                        'iccm_bits' => 16
                      },
            'numiregs' => '32',
            'num_mmode_perf_regs' => '4',
            'btb' => {
                       'btb_array_depth' => 128,
                       'btb_index2_hi' => 16,
                       'btb_addr_lo' => '3',
                       'btb_size' => 512,
                       'btb_index1_lo' => '3',
                       'btb_index3_lo' => 17,
                       'btb_addr_hi' => 9,
                       'btb_index1_hi' => 9,
                       'btb_btag_size' => 5,
                       'btb_fold2_index_hash' => 0,
                       'btb_index2_lo' => 10,
                       'btb_index3_hi' => 23,
                       'btb_btag_fold' => 0
                     },
            'tec_rv_icg' => 'clockhdr',
            'dccm' => {
                        'dccm_index_bits' => 11,
                        'dccm_data_cell' => 'ram_2048x39',
                        'dccm_size' => 64,
                        'dccm_fdata_width' => 39,
                        'dccm_bank_bits' => 3,
                        'dccm_region' => '0xf',
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_num_banks' => '8',
                        'dccm_width_bits' => 2,
                        'dccm_reserved' => '0x1400',
                        'lsu_sb_bits' => 16,
                        'dccm_size_64' => '',
                        'dccm_offset' => '0x40000',
                        'dccm_enable' => '1',
                        'dccm_byte_width' => '4',
                        'dccm_sadr' => '0xf0040000',
                        'dccm_ecc_width' => 7,
                        'dccm_rows' => '2048',
                        'dccm_num_banks_8' => '',
                        'dccm_bits' => 16,
                        'dccm_data_width' => 32
                      },
            'bht' => {
                       'bht_ghr_range' => '6:0',
                       'bht_addr_hi' => 9,
                       'bht_array_depth' => 128,
                       'bht_ghr_pad' => 'fghr[2:0],3\'b0',
                       'bht_addr_lo' => '3',
                       'bht_ghr_size' => 7,
                       'bht_hash_string' => '{hashin[7+2:5]^ghr[7-1:2], ghr[1:0]}// cf2',
                       'bht_ghr_hash_1' => '',
                       'bht_size' => 512,
                       'bht_ghr_pad2' => 'fghr[3:0],2\'b0'
                     },
            'max_mmode_perf_event' => '516',
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
            'harts' => 1,
            'even_odd_trigger_chains' => 'true',
            'protection' => {
                              'data_access_mask4' => '0xffffffff',
                              'inst_access_addr1' => '0xc0000000',
                              'inst_access_mask6' => '0xffffffff',
                              'data_access_enable4' => '0x0',
                              'data_access_enable3' => '1',
                              'data_access_enable1' => '1',
                              'inst_access_addr5' => '0x00000000',
                              'inst_access_addr6' => '0x00000000',
                              'data_access_enable0' => '1',
                              'data_access_addr5' => '0x00000000',
                              'inst_access_mask1' => '0x3fffffff',
                              'data_access_mask3' => '0x0fffffff',
                              'inst_access_addr4' => '0x00000000',
                              'inst_access_mask2' => '0x1fffffff',
                              'inst_access_mask0' => '0x7fffffff',
                              'inst_access_enable2' => '1',
                              'data_access_enable6' => '0x0',
                              'inst_access_addr3' => '0x80000000',
                              'data_access_addr1' => '0xc0000000',
                              'data_access_mask0' => '0x7fffffff',
                              'inst_access_enable1' => '1',
                              'inst_access_mask5' => '0xffffffff',
                              'data_access_addr4' => '0x00000000',
                              'data_access_enable5' => '0x0',
                              'data_access_addr7' => '0x00000000',
                              'data_access_mask5' => '0xffffffff',
                              'data_access_addr6' => '0x00000000',
                              'inst_access_mask7' => '0xffffffff',
                              'data_access_enable2' => '1',
                              'data_access_addr3' => '0x80000000',
                              'inst_access_enable5' => '0x0',
                              'inst_access_addr2' => '0xa0000000',
                              'inst_access_enable0' => '1',
                              'inst_access_addr0' => '0x0',
                              'inst_access_enable6' => '0x0',
                              'data_access_mask6' => '0xffffffff',
                              'data_access_mask2' => '0x1fffffff',
                              'inst_access_mask3' => '0x0fffffff',
                              'data_access_addr2' => '0xa0000000',
                              'inst_access_enable4' => '0x0',
                              'data_access_mask7' => '0xffffffff',
                              'inst_access_enable3' => '1',
                              'inst_access_addr7' => '0x00000000',
                              'data_access_enable7' => '0x0',
                              'data_access_addr0' => '0x0',
                              'inst_access_mask4' => '0xffffffff',
                              'inst_access_enable7' => '0x0',
                              'data_access_mask1' => '0x3fffffff'
                            },
            'icache' => {
                          'icache_num_ways' => 4,
                          'icache_banks_way' => 2,
                          'icache_index_hi' => 12,
                          'icache_tag_index_lo' => 6,
                          'icache_fdata_width' => 71,
                          'icache_bank_lo' => 3,
                          'icache_data_width' => 64,
                          'icache_enable' => 1,
                          'icache_beat_addr_hi' => 5,
                          'icache_num_beats' => 8,
                          'icache_data_cell' => 'ram_512x71',
                          'icache_bank_bits' => 1,
                          'icache_beat_bits' => 3,
                          'icache_status_bits' => 3,
                          'icache_tag_depth' => 128,
                          'icache_2banks' => '1',
                          'icache_bank_hi' => 3,
                          'icache_tag_lo' => 13,
                          'icache_scnd_last' => 6,
                          'icache_size' => 32,
                          'icache_data_depth' => '512',
                          'icache_num_lines' => 512,
                          'icache_ecc' => '1',
                          'icache_tag_cell' => 'ram_128x25',
                          'icache_num_lines_bank' => 64,
                          'icache_bank_width' => 8,
                          'icache_ln_sz' => 64,
                          'icache_data_index_lo' => 4,
                          'icache_num_lines_way' => '128'
                        }
          );
1;
