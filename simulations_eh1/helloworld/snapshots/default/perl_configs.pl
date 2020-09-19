#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by nimrodb on Mon Aug 10 21:32:27 IDT 2020
# 
#  cmd:    swerv -target=default 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'num_mmode_perf_regs' => '4',
            'icache' => {
                          'icache_ic_depth' => 8,
                          'icache_size' => 16,
                          'icache_taddr_high' => 5,
                          'icache_tag_high' => 12,
                          'icache_tag_cell' => 'ram_64x21',
                          'icache_enable' => '1',
                          'icache_tag_depth' => 64,
                          'icache_ic_rows' => '256',
                          'icache_ic_index' => 8,
                          'icache_tag_low' => '6',
                          'icache_data_cell' => 'ram_256x34'
                        },
            'iccm' => {
                        'iccm_reserved' => '0x1000',
                        'iccm_index_bits' => 14,
                        'iccm_sadr' => '0xee000000',
                        'iccm_rows' => '16384',
                        'iccm_bank_bits' => 3,
                        'iccm_size' => 512,
                        'iccm_num_banks' => '8',
                        'iccm_offset' => '0xe000000',
                        'iccm_region' => '0xe',
                        'iccm_data_cell' => 'ram_16384x39',
                        'iccm_size_512' => '',
                        'iccm_bits' => 19,
                        'iccm_eadr' => '0xee07ffff',
                        'iccm_num_banks_8' => ''
                      },
            'csr' => {
                       'mhpmevent5' => {
                                         'mask' => '0xffffffff',
                                         'exists' => 'true',
                                         'reset' => '0x0'
                                       },
                       'mfdc' => {
                                   'number' => '0x7f9',
                                   'reset' => '0x00070000',
                                   'exists' => 'true',
                                   'mask' => '0x000707ff'
                                 },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'misa' => {
                                   'mask' => '0x0',
                                   'exists' => 'true',
                                   'reset' => '0x40001104'
                                 },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'mitbnd1' => {
                                      'exists' => 'true',
                                      'number' => '0x7d6',
                                      'reset' => '0xffffffff',
                                      'mask' => '0xffffffff'
                                    },
                       'miccmect' => {
                                       'mask' => '0xffffffff',
                                       'exists' => 'true',
                                       'number' => '0x7f1',
                                       'reset' => '0x0'
                                     },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'dmst' => {
                                   'mask' => '0x0',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'exists' => 'true',
                                   'debug' => 'true',
                                   'number' => '0x7c4',
                                   'reset' => '0x0'
                                 },
                       'mitcnt0' => {
                                      'exists' => 'true',
                                      'number' => '0x7d2',
                                      'reset' => '0x0',
                                      'mask' => '0xffffffff'
                                    },
                       'micect' => {
                                     'exists' => 'true',
                                     'reset' => '0x0',
                                     'number' => '0x7f0',
                                     'mask' => '0xffffffff'
                                   },
                       'meicpct' => {
                                      'comment' => 'External claim id/priority capture.',
                                      'mask' => '0x0',
                                      'reset' => '0x0',
                                      'number' => '0xbca',
                                      'exists' => 'true'
                                    },
                       'mip' => {
                                  'reset' => '0x0',
                                  'poke_mask' => '0x70000888',
                                  'exists' => 'true',
                                  'mask' => '0x0'
                                },
                       'mcpc' => {
                                   'number' => '0x7c2',
                                   'reset' => '0x0',
                                   'exists' => 'true',
                                   'mask' => '0x0'
                                 },
                       'mhpmcounter3' => {
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0',
                                           'exists' => 'true'
                                         },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'mhpmevent3' => {
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0',
                                         'exists' => 'true'
                                       },
                       'meicidpl' => {
                                       'number' => '0xbcb',
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'comment' => 'External interrupt claim id priority level.',
                                       'mask' => '0xf'
                                     },
                       'tselect' => {
                                      'mask' => '0x3',
                                      'reset' => '0x0',
                                      'exists' => 'true'
                                    },
                       'mvendorid' => {
                                        'reset' => '0x45',
                                        'exists' => 'true',
                                        'mask' => '0x0'
                                      },
                       'mie' => {
                                  'reset' => '0x0',
                                  'exists' => 'true',
                                  'mask' => '0x70000888'
                                },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'mdccmect' => {
                                       'number' => '0x7f2',
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'mask' => '0xffffffff'
                                     },
                       'mhpmcounter4' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'mhpmcounter3h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter6h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'meipt' => {
                                    'comment' => 'External interrupt priority threshold.',
                                    'mask' => '0xf',
                                    'reset' => '0x0',
                                    'number' => '0xbc9',
                                    'exists' => 'true'
                                  },
                       'mhpmevent6' => {
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0',
                                         'exists' => 'true'
                                       },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'mitctl0' => {
                                      'mask' => '0x00000007',
                                      'number' => '0x7d4',
                                      'reset' => '0x1',
                                      'exists' => 'true'
                                    },
                       'mpmc' => {
                                   'number' => '0x7c6',
                                   'reset' => '0x0',
                                   'exists' => 'true',
                                   'comment' => 'Core pause: Implemented as read only.',
                                   'mask' => '0x0'
                                 },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'dicad0' => {
                                     'debug' => 'true',
                                     'exists' => 'true',
                                     'number' => '0x7c9',
                                     'reset' => '0x0',
                                     'mask' => '0xffffffff',
                                     'comment' => 'Cache diagnostics.'
                                   },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'mstatus' => {
                                      'mask' => '0x88',
                                      'exists' => 'true',
                                      'reset' => '0x1800'
                                    },
                       'mhpmcounter4h' => {
                                            'mask' => '0xffffffff',
                                            'exists' => 'true',
                                            'reset' => '0x0'
                                          },
                       'mhpmcounter5' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'dicad1' => {
                                     'exists' => 'true',
                                     'debug' => 'true',
                                     'number' => '0x7ca',
                                     'reset' => '0x0',
                                     'mask' => '0x3',
                                     'comment' => 'Cache diagnostics.'
                                   },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter5h' => {
                                            'mask' => '0xffffffff',
                                            'exists' => 'true',
                                            'reset' => '0x0'
                                          },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'mhpmcounter6' => {
                                           'exists' => 'true',
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff'
                                         },
                       'meicurpl' => {
                                       'mask' => '0xf',
                                       'comment' => 'External interrupt current priority level.',
                                       'exists' => 'true',
                                       'number' => '0xbcc',
                                       'reset' => '0x0'
                                     },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'mitcnt1' => {
                                      'mask' => '0xffffffff',
                                      'number' => '0x7d5',
                                      'reset' => '0x0',
                                      'exists' => 'true'
                                    },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'dcsr' => {
                                   'mask' => '0x00008c04',
                                   'exists' => 'true',
                                   'poke_mask' => '0x00008dcc',
                                   'reset' => '0x40000003'
                                 },
                       'mcgc' => {
                                   'poke_mask' => '0x000001ff',
                                   'number' => '0x7f8',
                                   'reset' => '0x0',
                                   'exists' => 'true',
                                   'mask' => '0x000001ff'
                                 },
                       'marchid' => {
                                      'exists' => 'true',
                                      'reset' => '0x0000000b',
                                      'mask' => '0x0'
                                    },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'mhpmevent4' => {
                                         'mask' => '0xffffffff',
                                         'exists' => 'true',
                                         'reset' => '0x0'
                                       },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'dicawics' => {
                                       'mask' => '0x0130fffc',
                                       'comment' => 'Cache diagnostics.',
                                       'debug' => 'true',
                                       'exists' => 'true',
                                       'number' => '0x7c8',
                                       'reset' => '0x0'
                                     },
                       'mitbnd0' => {
                                      'number' => '0x7d3',
                                      'reset' => '0xffffffff',
                                      'exists' => 'true',
                                      'mask' => '0xffffffff'
                                    },
                       'mitctl1' => {
                                      'mask' => '0x00000007',
                                      'number' => '0x7d7',
                                      'reset' => '0x1',
                                      'exists' => 'true'
                                    },
                       'mimpid' => {
                                     'reset' => '0x4',
                                     'exists' => 'true',
                                     'mask' => '0x0'
                                   },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'dicago' => {
                                     'reset' => '0x0',
                                     'number' => '0x7cb',
                                     'debug' => 'true',
                                     'exists' => 'true',
                                     'comment' => 'Cache diagnostics.',
                                     'mask' => '0x0'
                                   }
                     },
            'core' => {
                        'lsu_num_nbload' => '8',
                        'dma_buf_depth' => '4',
                        'lsu_num_nbload_width' => '3',
                        'dec_instbuf_depth' => '4',
                        'fpga_optimize' => '1',
                        'lsu_stbuf_depth' => '8'
                      },
            'bht' => {
                       'bht_ghr_pad' => 'fghr[4],3\'b0',
                       'bht_addr_lo' => '4',
                       'bht_ghr_pad2' => 'fghr[4:3],2\'b0',
                       'bht_array_depth' => 16,
                       'bht_hash_string' => '{ghr[3:2] ^ {ghr[3+1], {4-1-2{1\'b0} } },hashin[5:4]^ghr[2-1:0]}',
                       'bht_ghr_range' => '4:0',
                       'bht_size' => 128,
                       'bht_addr_hi' => 7,
                       'bht_ghr_size' => 5
                     },
            'target' => 'default',
            'physical' => '1',
            'nmi_vec' => '0x11110000',
            'dccm' => {
                        'dccm_sadr' => '0xf0040000',
                        'dccm_index_bits' => 11,
                        'dccm_data_width' => 32,
                        'dccm_offset' => '0x40000',
                        'dccm_width_bits' => 2,
                        'dccm_region' => '0xf',
                        'dccm_rows' => '2048',
                        'dccm_byte_width' => '4',
                        'dccm_size' => 64,
                        'dccm_reserved' => '0x1000',
                        'dccm_enable' => '1',
                        'dccm_size_64' => '',
                        'dccm_data_cell' => 'ram_2048x39',
                        'dccm_fdata_width' => 39,
                        'dccm_num_banks_8' => '',
                        'dccm_bits' => 16,
                        'dccm_ecc_width' => 7,
                        'dccm_eadr' => '0xf004ffff',
                        'lsu_sb_bits' => 16,
                        'dccm_bank_bits' => 3,
                        'dccm_num_banks' => '8'
                      },
            'triggers' => [
                            {
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
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
            'pic' => {
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meie_offset' => '0x2000',
                       'pic_meip_offset' => '0x1000',
                       'pic_offset' => '0xc0000',
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_region' => '0xf',
                       'pic_bits' => 15,
                       'pic_int_words' => 1,
                       'pic_base_addr' => '0xf00c0000',
                       'pic_total_int_plus1' => 9,
                       'pic_size' => 32,
                       'pic_total_int' => 8,
                       'pic_meipl_offset' => '0x0000',
                       'pic_meipt_offset' => '0x3004',
                       'pic_meigwclr_offset' => '0x5000'
                     },
            'tec_rv_icg' => 'clockhdr',
            'bus' => {
                       'lsu_bus_tag' => 4,
                       'sb_bus_tag' => '1',
                       'dma_bus_tag' => '1',
                       'ifu_bus_tag' => '3'
                     },
            'protection' => {
                              'inst_access_mask0' => '0xffffffff',
                              'data_access_addr6' => '0x00000000',
                              'data_access_enable2' => '0x0',
                              'data_access_mask6' => '0xffffffff',
                              'data_access_mask4' => '0xffffffff',
                              'data_access_enable6' => '0x0',
                              'inst_access_addr6' => '0x00000000',
                              'data_access_mask1' => '0xffffffff',
                              'data_access_mask7' => '0xffffffff',
                              'data_access_enable5' => '0x0',
                              'inst_access_addr5' => '0x00000000',
                              'inst_access_mask1' => '0xffffffff',
                              'data_access_addr7' => '0x00000000',
                              'data_access_mask3' => '0xffffffff',
                              'inst_access_addr4' => '0x00000000',
                              'data_access_enable1' => '0x0',
                              'data_access_mask0' => '0xffffffff',
                              'data_access_mask2' => '0xffffffff',
                              'data_access_addr1' => '0x00000000',
                              'inst_access_enable0' => '0x0',
                              'data_access_addr0' => '0x00000000',
                              'inst_access_enable4' => '0x0',
                              'inst_access_addr0' => '0x00000000',
                              'inst_access_mask5' => '0xffffffff',
                              'data_access_mask5' => '0xffffffff',
                              'inst_access_addr1' => '0x00000000',
                              'data_access_addr3' => '0x00000000',
                              'data_access_addr2' => '0x00000000',
                              'inst_access_enable7' => '0x0',
                              'data_access_addr4' => '0x00000000',
                              'inst_access_enable6' => '0x0',
                              'inst_access_mask4' => '0xffffffff',
                              'inst_access_mask7' => '0xffffffff',
                              'data_access_enable0' => '0x0',
                              'inst_access_mask3' => '0xffffffff',
                              'inst_access_addr3' => '0x00000000',
                              'inst_access_enable3' => '0x0',
                              'inst_access_enable2' => '0x0',
                              'inst_access_enable1' => '0x0',
                              'inst_access_mask2' => '0xffffffff',
                              'data_access_addr5' => '0x00000000',
                              'inst_access_addr2' => '0x00000000',
                              'inst_access_mask6' => '0xffffffff',
                              'data_access_enable7' => '0x0',
                              'data_access_enable4' => '0x0',
                              'data_access_enable3' => '0x0',
                              'inst_access_addr7' => '0x00000000',
                              'inst_access_enable5' => '0x0'
                            },
            'numiregs' => '32',
            'memmap' => {
                          'unused_region5' => '0x50000000',
                          'unused_region1' => '0x10000000',
                          'unused_region9' => '0x90000000',
                          'unused_region4' => '0x40000000',
                          'serialio' => '0xd0580000',
                          'unused_region3' => '0x30000000',
                          'unused_region6' => '0x60000000',
                          'external_prog' => '0xb0000000',
                          'debug_sb_mem' => '0xb0580000',
                          'unused_region7' => '0x70000000',
                          'unused_region2' => '0x20000000',
                          'unused_region0' => '0x00000000',
                          'external_data_1' => '0x00000000',
                          'external_data' => '0xc0580000'
                        },
            'even_odd_trigger_chains' => 'true',
            'verilator' => '',
            'regwidth' => '32',
            'testbench' => {
                             'TOP' => 'tb_top',
                             'sterr_rollback' => '0',
                             'lderr_rollback' => '1',
                             'ext_addrwidth' => '32',
                             'ext_datawidth' => '64',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'clock_period' => '100',
                             'assert_on' => '',
                             'datawidth' => '64',
                             'SDVT_AHB' => '1',
                             'RV_TOP' => '`TOP.rvtop',
                             'build_axi4' => '1'
                           },
            'btb' => {
                       'btb_btag_size' => 9,
                       'btb_index2_hi' => 7,
                       'btb_addr_lo' => '4',
                       'btb_btag_fold' => 1,
                       'btb_size' => 32,
                       'btb_index3_hi' => 9,
                       'btb_index1_lo' => '4',
                       'btb_index1_hi' => 5,
                       'btb_index3_lo' => 8,
                       'btb_array_depth' => 4,
                       'btb_addr_hi' => 5,
                       'btb_index2_lo' => 6
                     },
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'max_mmode_perf_event' => '50',
            'xlen' => 32,
            'reset_vec' => '0x80000000'
          );
1;
