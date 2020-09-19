#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by nimrodb on Mon Aug 10 21:37:54 IDT 2020
# 
#  cmd:    swerv -target=default 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'csr' => {
                       'mfdc' => {
                                   'number' => '0x7f9',
                                   'mask' => '0x000707ff',
                                   'exists' => 'true',
                                   'reset' => '0x00070000'
                                 },
                       'dicawics' => {
                                       'reset' => '0x0',
                                       'comment' => 'Cache diagnostics.',
                                       'debug' => 'true',
                                       'exists' => 'true',
                                       'mask' => '0x0130fffc',
                                       'number' => '0x7c8'
                                     },
                       'mip' => {
                                  'exists' => 'true',
                                  'poke_mask' => '0x70000888',
                                  'mask' => '0x0',
                                  'reset' => '0x0'
                                },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'mitbnd1' => {
                                      'mask' => '0xffffffff',
                                      'number' => '0x7d6',
                                      'exists' => 'true',
                                      'reset' => '0xffffffff'
                                    },
                       'mhpmcounter5' => {
                                           'mask' => '0xffffffff',
                                           'exists' => 'true',
                                           'reset' => '0x0'
                                         },
                       'mitcnt1' => {
                                      'reset' => '0x0',
                                      'exists' => 'true',
                                      'number' => '0x7d5',
                                      'mask' => '0xffffffff'
                                    },
                       'mstatus' => {
                                      'reset' => '0x1800',
                                      'mask' => '0x88',
                                      'exists' => 'true'
                                    },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'mvendorid' => {
                                        'reset' => '0x45',
                                        'mask' => '0x0',
                                        'exists' => 'true'
                                      },
                       'mhpmcounter5h' => {
                                            'reset' => '0x0',
                                            'exists' => 'true',
                                            'mask' => '0xffffffff'
                                          },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter4' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'mpmc' => {
                                   'reset' => '0x0',
                                   'comment' => 'Core pause: Implemented as read only.',
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'number' => '0x7c6'
                                 },
                       'dcsr' => {
                                   'exists' => 'true',
                                   'poke_mask' => '0x00008dcc',
                                   'mask' => '0x00008c04',
                                   'reset' => '0x40000003'
                                 },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'meicurpl' => {
                                       'mask' => '0xf',
                                       'number' => '0xbcc',
                                       'exists' => 'true',
                                       'comment' => 'External interrupt current priority level.',
                                       'reset' => '0x0'
                                     },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'marchid' => {
                                      'reset' => '0x0000000b',
                                      'mask' => '0x0',
                                      'exists' => 'true'
                                    },
                       'dicad1' => {
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0',
                                     'mask' => '0x3',
                                     'number' => '0x7ca',
                                     'exists' => 'true',
                                     'debug' => 'true'
                                   },
                       'mhpmevent6' => {
                                         'reset' => '0x0',
                                         'exists' => 'true',
                                         'mask' => '0xffffffff'
                                       },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'mitctl1' => {
                                      'reset' => '0x1',
                                      'number' => '0x7d7',
                                      'mask' => '0x00000007',
                                      'exists' => 'true'
                                    },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'mie' => {
                                  'exists' => 'true',
                                  'mask' => '0x70000888',
                                  'reset' => '0x0'
                                },
                       'mimpid' => {
                                     'reset' => '0x4',
                                     'exists' => 'true',
                                     'mask' => '0x0'
                                   },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'mhpmevent3' => {
                                         'reset' => '0x0',
                                         'exists' => 'true',
                                         'mask' => '0xffffffff'
                                       },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'dicago' => {
                                     'debug' => 'true',
                                     'exists' => 'true',
                                     'number' => '0x7cb',
                                     'mask' => '0x0',
                                     'reset' => '0x0',
                                     'comment' => 'Cache diagnostics.'
                                   },
                       'mhpmcounter6h' => {
                                            'reset' => '0x0',
                                            'exists' => 'true',
                                            'mask' => '0xffffffff'
                                          },
                       'meicpct' => {
                                      'exists' => 'true',
                                      'number' => '0xbca',
                                      'mask' => '0x0',
                                      'reset' => '0x0',
                                      'comment' => 'External claim id/priority capture.'
                                    },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'mhpmevent4' => {
                                         'reset' => '0x0',
                                         'exists' => 'true',
                                         'mask' => '0xffffffff'
                                       },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'mhpmevent5' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'tselect' => {
                                      'reset' => '0x0',
                                      'exists' => 'true',
                                      'mask' => '0x3'
                                    },
                       'mitcnt0' => {
                                      'reset' => '0x0',
                                      'mask' => '0xffffffff',
                                      'number' => '0x7d2',
                                      'exists' => 'true'
                                    },
                       'mitctl0' => {
                                      'reset' => '0x1',
                                      'exists' => 'true',
                                      'mask' => '0x00000007',
                                      'number' => '0x7d4'
                                    },
                       'mcpc' => {
                                   'reset' => '0x0',
                                   'mask' => '0x0',
                                   'number' => '0x7c2',
                                   'exists' => 'true'
                                 },
                       'meipt' => {
                                    'comment' => 'External interrupt priority threshold.',
                                    'reset' => '0x0',
                                    'exists' => 'true',
                                    'number' => '0xbc9',
                                    'mask' => '0xf'
                                  },
                       'dmst' => {
                                   'exists' => 'true',
                                   'number' => '0x7c4',
                                   'mask' => '0x0',
                                   'debug' => 'true',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'reset' => '0x0'
                                 },
                       'miccmect' => {
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'number' => '0x7f1',
                                       'mask' => '0xffffffff'
                                     },
                       'mhpmcounter3h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'mcgc' => {
                                   'exists' => 'true',
                                   'poke_mask' => '0x000001ff',
                                   'mask' => '0x000001ff',
                                   'number' => '0x7f8',
                                   'reset' => '0x0'
                                 },
                       'mitbnd0' => {
                                      'exists' => 'true',
                                      'mask' => '0xffffffff',
                                      'number' => '0x7d3',
                                      'reset' => '0xffffffff'
                                    },
                       'dicad0' => {
                                     'debug' => 'true',
                                     'exists' => 'true',
                                     'number' => '0x7c9',
                                     'mask' => '0xffffffff',
                                     'reset' => '0x0',
                                     'comment' => 'Cache diagnostics.'
                                   },
                       'meicidpl' => {
                                       'comment' => 'External interrupt claim id priority level.',
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'number' => '0xbcb',
                                       'mask' => '0xf'
                                     },
                       'mhpmcounter6' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'mdccmect' => {
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'mask' => '0xffffffff',
                                       'number' => '0x7f2'
                                     },
                       'mhpmcounter4h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter3' => {
                                           'mask' => '0xffffffff',
                                           'exists' => 'true',
                                           'reset' => '0x0'
                                         },
                       'misa' => {
                                   'reset' => '0x40001104',
                                   'mask' => '0x0',
                                   'exists' => 'true'
                                 },
                       'micect' => {
                                     'exists' => 'true',
                                     'number' => '0x7f0',
                                     'mask' => '0xffffffff',
                                     'reset' => '0x0'
                                   },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    }
                     },
            'iccm' => {
                        'iccm_size_512' => '',
                        'iccm_region' => '0xe',
                        'iccm_bits' => 19,
                        'iccm_reserved' => '0x1000',
                        'iccm_rows' => '16384',
                        'iccm_offset' => '0xe000000',
                        'iccm_index_bits' => 14,
                        'iccm_eadr' => '0xee07ffff',
                        'iccm_sadr' => '0xee000000',
                        'iccm_num_banks' => '8',
                        'iccm_num_banks_8' => '',
                        'iccm_size' => 512,
                        'iccm_data_cell' => 'ram_16384x39',
                        'iccm_bank_bits' => 3
                      },
            'memmap' => {
                          'debug_sb_mem' => '0xb0580000',
                          'unused_region0' => '0x00000000',
                          'unused_region9' => '0x90000000',
                          'external_prog' => '0xb0000000',
                          'external_data' => '0xc0580000',
                          'unused_region3' => '0x30000000',
                          'serialio' => '0xd0580000',
                          'unused_region4' => '0x40000000',
                          'unused_region1' => '0x10000000',
                          'unused_region5' => '0x50000000',
                          'unused_region7' => '0x70000000',
                          'unused_region2' => '0x20000000',
                          'unused_region6' => '0x60000000',
                          'external_data_1' => '0x00000000'
                        },
            'dccm' => {
                        'dccm_size' => 64,
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_index_bits' => 11,
                        'dccm_num_banks' => '8',
                        'dccm_region' => '0xf',
                        'dccm_bank_bits' => 3,
                        'dccm_offset' => '0x40000',
                        'dccm_data_cell' => 'ram_2048x39',
                        'dccm_bits' => 16,
                        'lsu_sb_bits' => 16,
                        'dccm_reserved' => '0x1000',
                        'dccm_fdata_width' => 39,
                        'dccm_rows' => '2048',
                        'dccm_enable' => '1',
                        'dccm_byte_width' => '4',
                        'dccm_data_width' => 32,
                        'dccm_size_64' => '',
                        'dccm_sadr' => '0xf0040000',
                        'dccm_width_bits' => 2,
                        'dccm_num_banks_8' => '',
                        'dccm_ecc_width' => 7
                      },
            'triggers' => [
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
                            }
                          ],
            'num_mmode_perf_regs' => '4',
            'pic' => {
                       'pic_bits' => 15,
                       'pic_total_int' => 8,
                       'pic_meipl_offset' => '0x0000',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_offset' => '0xc0000',
                       'pic_meip_offset' => '0x1000',
                       'pic_size' => 32,
                       'pic_meie_offset' => '0x2000',
                       'pic_meipt_offset' => '0x3004',
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_int_words' => 1,
                       'pic_total_int_plus1' => 9,
                       'pic_base_addr' => '0xf00c0000',
                       'pic_region' => '0xf',
                       'pic_mpiccfg_offset' => '0x3000'
                     },
            'nmi_vec' => '0x11110000',
            'regwidth' => '32',
            'bus' => {
                       'sb_bus_tag' => '1',
                       'lsu_bus_tag' => 4,
                       'ifu_bus_tag' => '3',
                       'dma_bus_tag' => '1'
                     },
            'bht' => {
                       'bht_hash_string' => '{ghr[3:2] ^ {ghr[3+1], {4-1-2{1\'b0} } },hashin[5:4]^ghr[2-1:0]}',
                       'bht_addr_lo' => '4',
                       'bht_ghr_range' => '4:0',
                       'bht_size' => 128,
                       'bht_addr_hi' => 7,
                       'bht_ghr_pad' => 'fghr[4],3\'b0',
                       'bht_ghr_size' => 5,
                       'bht_ghr_pad2' => 'fghr[4:3],2\'b0',
                       'bht_array_depth' => 16
                     },
            'numiregs' => '32',
            'testbench' => {
                             'ext_addrwidth' => '32',
                             'ext_datawidth' => '64',
                             'build_axi4' => '1',
                             'lderr_rollback' => '1',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'assert_on' => '',
                             'datawidth' => '64',
                             'clock_period' => '100',
                             'RV_TOP' => '`TOP.rvtop',
                             'SDVT_AHB' => '1',
                             'sterr_rollback' => '0',
                             'TOP' => 'tb_top'
                           },
            'btb' => {
                       'btb_index3_lo' => 8,
                       'btb_addr_lo' => '4',
                       'btb_btag_fold' => 1,
                       'btb_index1_lo' => '4',
                       'btb_index2_hi' => 7,
                       'btb_index3_hi' => 9,
                       'btb_size' => 32,
                       'btb_array_depth' => 4,
                       'btb_index2_lo' => 6,
                       'btb_index1_hi' => 5,
                       'btb_addr_hi' => 5,
                       'btb_btag_size' => 9
                     },
            'reset_vec' => '0x80000000',
            'protection' => {
                              'data_access_mask6' => '0xffffffff',
                              'data_access_mask3' => '0xffffffff',
                              'inst_access_enable0' => '0x0',
                              'data_access_addr1' => '0x00000000',
                              'inst_access_mask7' => '0xffffffff',
                              'data_access_addr3' => '0x00000000',
                              'data_access_addr4' => '0x00000000',
                              'inst_access_enable4' => '0x0',
                              'inst_access_addr5' => '0x00000000',
                              'inst_access_mask5' => '0xffffffff',
                              'inst_access_addr1' => '0x00000000',
                              'inst_access_mask2' => '0xffffffff',
                              'data_access_mask0' => '0xffffffff',
                              'inst_access_mask6' => '0xffffffff',
                              'data_access_enable1' => '0x0',
                              'inst_access_addr6' => '0x00000000',
                              'data_access_enable4' => '0x0',
                              'inst_access_enable7' => '0x0',
                              'data_access_mask5' => '0xffffffff',
                              'inst_access_addr7' => '0x00000000',
                              'data_access_mask7' => '0xffffffff',
                              'data_access_enable0' => '0x0',
                              'inst_access_enable1' => '0x0',
                              'data_access_enable5' => '0x0',
                              'inst_access_addr4' => '0x00000000',
                              'inst_access_mask0' => '0xffffffff',
                              'data_access_addr5' => '0x00000000',
                              'data_access_mask1' => '0xffffffff',
                              'data_access_addr0' => '0x00000000',
                              'data_access_enable6' => '0x0',
                              'inst_access_enable3' => '0x0',
                              'inst_access_addr2' => '0x00000000',
                              'data_access_enable7' => '0x0',
                              'inst_access_addr0' => '0x00000000',
                              'data_access_enable2' => '0x0',
                              'data_access_enable3' => '0x0',
                              'inst_access_mask1' => '0xffffffff',
                              'data_access_addr6' => '0x00000000',
                              'inst_access_addr3' => '0x00000000',
                              'inst_access_enable2' => '0x0',
                              'data_access_mask2' => '0xffffffff',
                              'inst_access_mask3' => '0xffffffff',
                              'data_access_addr7' => '0x00000000',
                              'data_access_addr2' => '0x00000000',
                              'inst_access_mask4' => '0xffffffff',
                              'data_access_mask4' => '0xffffffff',
                              'inst_access_enable6' => '0x0',
                              'inst_access_enable5' => '0x0'
                            },
            'even_odd_trigger_chains' => 'true',
            'verilator' => '',
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'xlen' => 32,
            'icache' => {
                          'icache_tag_low' => '6',
                          'icache_ic_index' => 8,
                          'icache_tag_high' => 12,
                          'icache_ic_rows' => '256',
                          'icache_ic_depth' => 8,
                          'icache_tag_cell' => 'ram_64x21',
                          'icache_size' => 16,
                          'icache_enable' => '1',
                          'icache_taddr_high' => 5,
                          'icache_data_cell' => 'ram_256x34',
                          'icache_tag_depth' => 64
                        },
            'core' => {
                        'lsu_num_nbload' => '8',
                        'dec_instbuf_depth' => '4',
                        'dma_buf_depth' => '4',
                        'lsu_stbuf_depth' => '8',
                        'lsu_num_nbload_width' => '3',
                        'fpga_optimize' => '1'
                      },
            'physical' => '1',
            'max_mmode_perf_event' => '50',
            'harts' => 1,
            'target' => 'default',
            'tec_rv_icg' => 'clockhdr'
          );
1;
