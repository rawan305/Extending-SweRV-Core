#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by nimrodb on Mon Aug 10 21:47:02 IDT 2020
# 
#  cmd:    swerv -target=default 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'csr' => {
                       'mhpmevent4' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'micect' => {
                                     'number' => '0x7f0',
                                     'exists' => 'true',
                                     'mask' => '0xffffffff',
                                     'reset' => '0x0'
                                   },
                       'mhpmcounter5' => {
                                           'exists' => 'true',
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff'
                                         },
                       'mitbnd0' => {
                                      'exists' => 'true',
                                      'number' => '0x7d3',
                                      'mask' => '0xffffffff',
                                      'reset' => '0xffffffff'
                                    },
                       'mie' => {
                                  'reset' => '0x0',
                                  'mask' => '0x70000888',
                                  'exists' => 'true'
                                },
                       'mimpid' => {
                                     'exists' => 'true',
                                     'reset' => '0x4',
                                     'mask' => '0x0'
                                   },
                       'mhpmcounter6' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'mhpmevent6' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'dicago' => {
                                     'exists' => 'true',
                                     'number' => '0x7cb',
                                     'reset' => '0x0',
                                     'debug' => 'true',
                                     'comment' => 'Cache diagnostics.',
                                     'mask' => '0x0'
                                   },
                       'mhpmcounter3' => {
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0',
                                           'exists' => 'true'
                                         },
                       'miccmect' => {
                                       'number' => '0x7f1',
                                       'exists' => 'true',
                                       'mask' => '0xffffffff',
                                       'reset' => '0x0'
                                     },
                       'dicad0' => {
                                     'exists' => 'true',
                                     'number' => '0x7c9',
                                     'debug' => 'true',
                                     'comment' => 'Cache diagnostics.',
                                     'mask' => '0xffffffff',
                                     'reset' => '0x0'
                                   },
                       'mip' => {
                                  'poke_mask' => '0x70000888',
                                  'reset' => '0x0',
                                  'mask' => '0x0',
                                  'exists' => 'true'
                                },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'mpmc' => {
                                   'exists' => 'true',
                                   'number' => '0x7c6',
                                   'comment' => 'Core pause: Implemented as read only.',
                                   'mask' => '0x0',
                                   'reset' => '0x0'
                                 },
                       'meicpct' => {
                                      'comment' => 'External claim id/priority capture.',
                                      'mask' => '0x0',
                                      'reset' => '0x0',
                                      'number' => '0xbca',
                                      'exists' => 'true'
                                    },
                       'dcsr' => {
                                   'poke_mask' => '0x00008dcc',
                                   'reset' => '0x40000003',
                                   'mask' => '0x00008c04',
                                   'exists' => 'true'
                                 },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter5h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'mdccmect' => {
                                       'number' => '0x7f2',
                                       'exists' => 'true',
                                       'mask' => '0xffffffff',
                                       'reset' => '0x0'
                                     },
                       'dicad1' => {
                                     'mask' => '0x3',
                                     'comment' => 'Cache diagnostics.',
                                     'debug' => 'true',
                                     'reset' => '0x0',
                                     'number' => '0x7ca',
                                     'exists' => 'true'
                                   },
                       'mvendorid' => {
                                        'exists' => 'true',
                                        'mask' => '0x0',
                                        'reset' => '0x45'
                                      },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter4h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'tselect' => {
                                      'reset' => '0x0',
                                      'mask' => '0x3',
                                      'exists' => 'true'
                                    },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'dmst' => {
                                   'debug' => 'true',
                                   'mask' => '0x0',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'reset' => '0x0',
                                   'exists' => 'true',
                                   'number' => '0x7c4'
                                 },
                       'mhpmcounter3h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'mcpc' => {
                                   'number' => '0x7c2',
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'reset' => '0x0'
                                 },
                       'mcgc' => {
                                   'reset' => '0x0',
                                   'poke_mask' => '0x000001ff',
                                   'mask' => '0x000001ff',
                                   'exists' => 'true',
                                   'number' => '0x7f8'
                                 },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'mhpmevent5' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'dicawics' => {
                                       'debug' => 'true',
                                       'mask' => '0x0130fffc',
                                       'comment' => 'Cache diagnostics.',
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'number' => '0x7c8'
                                     },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'meipt' => {
                                    'comment' => 'External interrupt priority threshold.',
                                    'mask' => '0xf',
                                    'reset' => '0x0',
                                    'number' => '0xbc9',
                                    'exists' => 'true'
                                  },
                       'mitctl1' => {
                                      'mask' => '0x00000007',
                                      'reset' => '0x1',
                                      'exists' => 'true',
                                      'number' => '0x7d7'
                                    },
                       'mitctl0' => {
                                      'number' => '0x7d4',
                                      'exists' => 'true',
                                      'reset' => '0x1',
                                      'mask' => '0x00000007'
                                    },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'mhpmevent3' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'marchid' => {
                                      'exists' => 'true',
                                      'reset' => '0x0000000b',
                                      'mask' => '0x0'
                                    },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'mstatus' => {
                                      'exists' => 'true',
                                      'mask' => '0x88',
                                      'reset' => '0x1800'
                                    },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'mitcnt1' => {
                                      'exists' => 'true',
                                      'number' => '0x7d5',
                                      'reset' => '0x0',
                                      'mask' => '0xffffffff'
                                    },
                       'meicurpl' => {
                                       'number' => '0xbcc',
                                       'exists' => 'true',
                                       'comment' => 'External interrupt current priority level.',
                                       'mask' => '0xf',
                                       'reset' => '0x0'
                                     },
                       'misa' => {
                                   'mask' => '0x0',
                                   'reset' => '0x40001104',
                                   'exists' => 'true'
                                 },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'mfdc' => {
                                   'mask' => '0x000707ff',
                                   'reset' => '0x00070000',
                                   'number' => '0x7f9',
                                   'exists' => 'true'
                                 },
                       'mitcnt0' => {
                                      'number' => '0x7d2',
                                      'exists' => 'true',
                                      'reset' => '0x0',
                                      'mask' => '0xffffffff'
                                    },
                       'meicidpl' => {
                                       'reset' => '0x0',
                                       'mask' => '0xf',
                                       'comment' => 'External interrupt claim id priority level.',
                                       'exists' => 'true',
                                       'number' => '0xbcb'
                                     },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter6h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter4' => {
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff',
                                           'exists' => 'true'
                                         },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'mitbnd1' => {
                                      'mask' => '0xffffffff',
                                      'reset' => '0xffffffff',
                                      'exists' => 'true',
                                      'number' => '0x7d6'
                                    }
                     },
            'dccm' => {
                        'dccm_fdata_width' => 39,
                        'dccm_size' => 64,
                        'dccm_enable' => '1',
                        'dccm_num_banks_8' => '',
                        'dccm_data_width' => 32,
                        'dccm_region' => '0xf',
                        'dccm_data_cell' => 'ram_2048x39',
                        'dccm_offset' => '0x40000',
                        'dccm_reserved' => '0x1000',
                        'dccm_size_64' => '',
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_bits' => 16,
                        'dccm_bank_bits' => 3,
                        'dccm_sadr' => '0xf0040000',
                        'lsu_sb_bits' => 16,
                        'dccm_byte_width' => '4',
                        'dccm_rows' => '2048',
                        'dccm_index_bits' => 11,
                        'dccm_width_bits' => 2,
                        'dccm_ecc_width' => 7,
                        'dccm_num_banks' => '8'
                      },
            'harts' => 1,
            'bht' => {
                       'bht_addr_hi' => 7,
                       'bht_hash_string' => '{ghr[3:2] ^ {ghr[3+1], {4-1-2{1\'b0} } },hashin[5:4]^ghr[2-1:0]}',
                       'bht_ghr_pad2' => 'fghr[4:3],2\'b0',
                       'bht_size' => 128,
                       'bht_addr_lo' => '4',
                       'bht_ghr_pad' => 'fghr[4],3\'b0',
                       'bht_array_depth' => 16,
                       'bht_ghr_range' => '4:0',
                       'bht_ghr_size' => 5
                     },
            'testbench' => {
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'sterr_rollback' => '0',
                             'ext_addrwidth' => '32',
                             'build_axi4' => '1',
                             'ext_datawidth' => '64',
                             'lderr_rollback' => '1',
                             'RV_TOP' => '`TOP.rvtop',
                             'clock_period' => '100',
                             'TOP' => 'tb_top',
                             'datawidth' => '64',
                             'assert_on' => '',
                             'SDVT_AHB' => '1'
                           },
            'protection' => {
                              'inst_access_mask0' => '0xffffffff',
                              'data_access_mask7' => '0xffffffff',
                              'data_access_enable1' => '0x0',
                              'inst_access_mask5' => '0xffffffff',
                              'data_access_mask3' => '0xffffffff',
                              'inst_access_mask6' => '0xffffffff',
                              'data_access_enable7' => '0x0',
                              'inst_access_addr6' => '0x00000000',
                              'data_access_enable6' => '0x0',
                              'inst_access_enable2' => '0x0',
                              'inst_access_mask4' => '0xffffffff',
                              'inst_access_enable0' => '0x0',
                              'inst_access_addr4' => '0x00000000',
                              'data_access_addr2' => '0x00000000',
                              'data_access_enable3' => '0x0',
                              'inst_access_mask3' => '0xffffffff',
                              'inst_access_addr2' => '0x00000000',
                              'data_access_addr5' => '0x00000000',
                              'inst_access_addr1' => '0x00000000',
                              'inst_access_enable6' => '0x0',
                              'inst_access_addr3' => '0x00000000',
                              'inst_access_enable5' => '0x0',
                              'inst_access_enable4' => '0x0',
                              'data_access_addr7' => '0x00000000',
                              'inst_access_addr5' => '0x00000000',
                              'inst_access_mask7' => '0xffffffff',
                              'data_access_enable2' => '0x0',
                              'inst_access_enable1' => '0x0',
                              'data_access_enable5' => '0x0',
                              'data_access_addr3' => '0x00000000',
                              'inst_access_addr0' => '0x00000000',
                              'inst_access_enable3' => '0x0',
                              'data_access_addr0' => '0x00000000',
                              'data_access_mask1' => '0xffffffff',
                              'inst_access_mask2' => '0xffffffff',
                              'inst_access_enable7' => '0x0',
                              'data_access_mask6' => '0xffffffff',
                              'data_access_addr1' => '0x00000000',
                              'data_access_addr6' => '0x00000000',
                              'data_access_addr4' => '0x00000000',
                              'data_access_enable0' => '0x0',
                              'inst_access_addr7' => '0x00000000',
                              'data_access_mask0' => '0xffffffff',
                              'data_access_enable4' => '0x0',
                              'data_access_mask5' => '0xffffffff',
                              'data_access_mask2' => '0xffffffff',
                              'inst_access_mask1' => '0xffffffff',
                              'data_access_mask4' => '0xffffffff'
                            },
            'btb' => {
                       'btb_array_depth' => 4,
                       'btb_btag_size' => 9,
                       'btb_size' => 32,
                       'btb_addr_lo' => '4',
                       'btb_btag_fold' => 1,
                       'btb_index1_hi' => 5,
                       'btb_index1_lo' => '4',
                       'btb_index2_hi' => 7,
                       'btb_index3_hi' => 9,
                       'btb_index3_lo' => 8,
                       'btb_addr_hi' => 5,
                       'btb_index2_lo' => 6
                     },
            'verilator' => '',
            'target' => 'default',
            'core' => {
                        'fpga_optimize' => '1',
                        'lsu_stbuf_depth' => '8',
                        'lsu_num_nbload' => '8',
                        'lsu_num_nbload_width' => '3',
                        'dma_buf_depth' => '4',
                        'dec_instbuf_depth' => '4'
                      },
            'even_odd_trigger_chains' => 'true',
            'tec_rv_icg' => 'clockhdr',
            'memmap' => {
                          'unused_region2' => '0x20000000',
                          'unused_region7' => '0x70000000',
                          'unused_region5' => '0x50000000',
                          'unused_region6' => '0x60000000',
                          'unused_region3' => '0x30000000',
                          'serialio' => '0xd0580000',
                          'unused_region1' => '0x10000000',
                          'external_data' => '0xc0580000',
                          'debug_sb_mem' => '0xb0580000',
                          'external_prog' => '0xb0000000',
                          'unused_region4' => '0x40000000',
                          'unused_region0' => '0x00000000',
                          'external_data_1' => '0x00000000',
                          'unused_region9' => '0x90000000'
                        },
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'xlen' => 32,
            'triggers' => [
                            {
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'poke_mask' => [
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
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'poke_mask' => [
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
            'nmi_vec' => '0x11110000',
            'bus' => {
                       'ifu_bus_tag' => '3',
                       'dma_bus_tag' => '1',
                       'lsu_bus_tag' => 4,
                       'sb_bus_tag' => '1'
                     },
            'num_mmode_perf_regs' => '4',
            'icache' => {
                          'icache_tag_cell' => 'ram_64x21',
                          'icache_tag_high' => 12,
                          'icache_tag_low' => '6',
                          'icache_data_cell' => 'ram_256x34',
                          'icache_ic_rows' => '256',
                          'icache_size' => 16,
                          'icache_ic_index' => 8,
                          'icache_enable' => '1',
                          'icache_tag_depth' => 64,
                          'icache_taddr_high' => 5,
                          'icache_ic_depth' => 8
                        },
            'iccm' => {
                        'iccm_eadr' => '0xee07ffff',
                        'iccm_sadr' => '0xee000000',
                        'iccm_bank_bits' => 3,
                        'iccm_bits' => 19,
                        'iccm_num_banks' => '8',
                        'iccm_size_512' => '',
                        'iccm_data_cell' => 'ram_16384x39',
                        'iccm_region' => '0xe',
                        'iccm_size' => 512,
                        'iccm_reserved' => '0x1000',
                        'iccm_offset' => '0xe000000',
                        'iccm_rows' => '16384',
                        'iccm_index_bits' => 14,
                        'iccm_num_banks_8' => ''
                      },
            'reset_vec' => '0x80000000',
            'max_mmode_perf_event' => '50',
            'physical' => '1',
            'pic' => {
                       'pic_bits' => 15,
                       'pic_region' => '0xf',
                       'pic_total_int_plus1' => 9,
                       'pic_size' => 32,
                       'pic_meipl_offset' => '0x0000',
                       'pic_meipt_offset' => '0x3004',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_total_int' => 8,
                       'pic_base_addr' => '0xf00c0000',
                       'pic_meip_offset' => '0x1000',
                       'pic_int_words' => 1,
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_meie_offset' => '0x2000',
                       'pic_offset' => '0xc0000'
                     },
            'numiregs' => '32',
            'regwidth' => '32'
          );
1;
