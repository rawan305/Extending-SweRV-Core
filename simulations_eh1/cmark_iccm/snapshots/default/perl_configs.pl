#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by nimrodb on Mon Aug 10 21:45:22 IDT 2020
# 
#  cmd:    swerv -target=default -set=iccm_enable 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'btb' => {
                       'btb_addr_hi' => 5,
                       'btb_array_depth' => 4,
                       'btb_btag_size' => 9,
                       'btb_size' => 32,
                       'btb_index1_lo' => '4',
                       'btb_index1_hi' => 5,
                       'btb_index3_lo' => 8,
                       'btb_index3_hi' => 9,
                       'btb_index2_hi' => 7,
                       'btb_btag_fold' => 1,
                       'btb_index2_lo' => 6,
                       'btb_addr_lo' => '4'
                     },
            'iccm' => {
                        'iccm_size' => 512,
                        'iccm_num_banks_8' => '',
                        'iccm_num_banks' => '8',
                        'iccm_bank_bits' => 3,
                        'iccm_enable' => 1,
                        'iccm_sadr' => '0xee000000',
                        'iccm_index_bits' => 14,
                        'iccm_eadr' => '0xee07ffff',
                        'iccm_data_cell' => 'ram_16384x39',
                        'iccm_region' => '0xe',
                        'iccm_offset' => '0xe000000',
                        'iccm_reserved' => '0x1000',
                        'iccm_rows' => '16384',
                        'iccm_bits' => 19,
                        'iccm_size_512' => ''
                      },
            'numiregs' => '32',
            'verilator' => '',
            'nmi_vec' => '0x11110000',
            'testbench' => {
                             'TOP' => 'tb_top',
                             'RV_TOP' => '`TOP.rvtop',
                             'ext_addrwidth' => '32',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'lderr_rollback' => '1',
                             'build_axi4' => '1',
                             'ext_datawidth' => '64',
                             'sterr_rollback' => '0',
                             'SDVT_AHB' => '1',
                             'assert_on' => '',
                             'clock_period' => '100',
                             'datawidth' => '64'
                           },
            'reset_vec' => '0x80000000',
            'csr' => {
                       'mhpmevent4' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'mvendorid' => {
                                        'mask' => '0x0',
                                        'reset' => '0x45',
                                        'exists' => 'true'
                                      },
                       'mhpmevent3' => {
                                         'exists' => 'true',
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff'
                                       },
                       'mhpmcounter6' => {
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0',
                                           'exists' => 'true'
                                         },
                       'dicawics' => {
                                       'number' => '0x7c8',
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'comment' => 'Cache diagnostics.',
                                       'debug' => 'true',
                                       'mask' => '0x0130fffc'
                                     },
                       'micect' => {
                                     'exists' => 'true',
                                     'number' => '0x7f0',
                                     'mask' => '0xffffffff',
                                     'reset' => '0x0'
                                   },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'miccmect' => {
                                       'reset' => '0x0',
                                       'mask' => '0xffffffff',
                                       'number' => '0x7f1',
                                       'exists' => 'true'
                                     },
                       'mhpmcounter6h' => {
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0',
                                            'exists' => 'true'
                                          },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'mitbnd0' => {
                                      'exists' => 'true',
                                      'number' => '0x7d3',
                                      'mask' => '0xffffffff',
                                      'reset' => '0xffffffff'
                                    },
                       'mhpmcounter5h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'dmst' => {
                                   'number' => '0x7c4',
                                   'exists' => 'true',
                                   'reset' => '0x0',
                                   'mask' => '0x0',
                                   'debug' => 'true',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.'
                                 },
                       'mhpmcounter4' => {
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0',
                                           'exists' => 'true'
                                         },
                       'dicago' => {
                                     'debug' => 'true',
                                     'mask' => '0x0',
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'number' => '0x7cb'
                                   },
                       'mhpmcounter4h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          },
                       'mitctl1' => {
                                      'exists' => 'true',
                                      'number' => '0x7d7',
                                      'mask' => '0x00000007',
                                      'reset' => '0x1'
                                    },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'tselect' => {
                                      'mask' => '0x3',
                                      'reset' => '0x0',
                                      'exists' => 'true'
                                    },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'mitctl0' => {
                                      'mask' => '0x00000007',
                                      'reset' => '0x1',
                                      'exists' => 'true',
                                      'number' => '0x7d4'
                                    },
                       'marchid' => {
                                      'mask' => '0x0',
                                      'reset' => '0x0000000b',
                                      'exists' => 'true'
                                    },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'mstatus' => {
                                      'reset' => '0x1800',
                                      'mask' => '0x88',
                                      'exists' => 'true'
                                    },
                       'dcsr' => {
                                   'reset' => '0x40000003',
                                   'mask' => '0x00008c04',
                                   'exists' => 'true',
                                   'poke_mask' => '0x00008dcc'
                                 },
                       'mcgc' => {
                                   'mask' => '0x000001ff',
                                   'reset' => '0x0',
                                   'poke_mask' => '0x000001ff',
                                   'exists' => 'true',
                                   'number' => '0x7f8'
                                 },
                       'mcpc' => {
                                   'reset' => '0x0',
                                   'mask' => '0x0',
                                   'number' => '0x7c2',
                                   'exists' => 'true'
                                 },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter3' => {
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0',
                                           'exists' => 'true'
                                         },
                       'mitcnt1' => {
                                      'number' => '0x7d5',
                                      'exists' => 'true',
                                      'reset' => '0x0',
                                      'mask' => '0xffffffff'
                                    },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'mpmc' => {
                                   'comment' => 'Core pause: Implemented as read only.',
                                   'mask' => '0x0',
                                   'reset' => '0x0',
                                   'exists' => 'true',
                                   'number' => '0x7c6'
                                 },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'mhpmevent5' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'mie' => {
                                  'exists' => 'true',
                                  'reset' => '0x0',
                                  'mask' => '0x70000888'
                                },
                       'mhpmcounter3h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'meicpct' => {
                                      'reset' => '0x0',
                                      'mask' => '0x0',
                                      'comment' => 'External claim id/priority capture.',
                                      'number' => '0xbca',
                                      'exists' => 'true'
                                    },
                       'mimpid' => {
                                     'exists' => 'true',
                                     'reset' => '0x4',
                                     'mask' => '0x0'
                                   },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'mfdc' => {
                                   'mask' => '0x000707ff',
                                   'reset' => '0x00070000',
                                   'exists' => 'true',
                                   'number' => '0x7f9'
                                 },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'meicurpl' => {
                                       'exists' => 'true',
                                       'number' => '0xbcc',
                                       'comment' => 'External interrupt current priority level.',
                                       'mask' => '0xf',
                                       'reset' => '0x0'
                                     },
                       'mhpmcounter5' => {
                                           'exists' => 'true',
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff'
                                         },
                       'mdccmect' => {
                                       'reset' => '0x0',
                                       'mask' => '0xffffffff',
                                       'number' => '0x7f2',
                                       'exists' => 'true'
                                     },
                       'mitbnd1' => {
                                      'exists' => 'true',
                                      'number' => '0x7d6',
                                      'mask' => '0xffffffff',
                                      'reset' => '0xffffffff'
                                    },
                       'mip' => {
                                  'exists' => 'true',
                                  'poke_mask' => '0x70000888',
                                  'reset' => '0x0',
                                  'mask' => '0x0'
                                },
                       'meipt' => {
                                    'exists' => 'true',
                                    'number' => '0xbc9',
                                    'comment' => 'External interrupt priority threshold.',
                                    'mask' => '0xf',
                                    'reset' => '0x0'
                                  },
                       'dicad1' => {
                                     'reset' => '0x0',
                                     'comment' => 'Cache diagnostics.',
                                     'debug' => 'true',
                                     'mask' => '0x3',
                                     'number' => '0x7ca',
                                     'exists' => 'true'
                                   },
                       'meicidpl' => {
                                       'number' => '0xbcb',
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'comment' => 'External interrupt claim id priority level.',
                                       'mask' => '0xf'
                                     },
                       'mitcnt0' => {
                                      'reset' => '0x0',
                                      'mask' => '0xffffffff',
                                      'number' => '0x7d2',
                                      'exists' => 'true'
                                    },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'misa' => {
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'reset' => '0x40001104'
                                 },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'mhpmevent6' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'dicad0' => {
                                     'debug' => 'true',
                                     'mask' => '0xffffffff',
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'number' => '0x7c9'
                                   },
                       'cycle' => {
                                    'exists' => 'false'
                                  }
                     },
            'max_mmode_perf_event' => '50',
            'xlen' => 32,
            'bht' => {
                       'bht_ghr_pad2' => 'fghr[4:3],2\'b0',
                       'bht_ghr_size' => 5,
                       'bht_ghr_pad' => 'fghr[4],3\'b0',
                       'bht_addr_lo' => '4',
                       'bht_size' => 128,
                       'bht_array_depth' => 16,
                       'bht_hash_string' => '{ghr[3:2] ^ {ghr[3+1], {4-1-2{1\'b0} } },hashin[5:4]^ghr[2-1:0]}',
                       'bht_addr_hi' => 7,
                       'bht_ghr_range' => '4:0'
                     },
            'even_odd_trigger_chains' => 'true',
            'physical' => '1',
            'dccm' => {
                        'dccm_rows' => '2048',
                        'dccm_region' => '0xf',
                        'dccm_bank_bits' => 3,
                        'dccm_num_banks_8' => '',
                        'dccm_fdata_width' => 39,
                        'dccm_sadr' => '0xf0040000',
                        'dccm_offset' => '0x40000',
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_enable' => '1',
                        'dccm_data_width' => 32,
                        'dccm_size_64' => '',
                        'dccm_reserved' => '0x1000',
                        'dccm_data_cell' => 'ram_2048x39',
                        'lsu_sb_bits' => 16,
                        'dccm_byte_width' => '4',
                        'dccm_num_banks' => '8',
                        'dccm_width_bits' => 2,
                        'dccm_bits' => 16,
                        'dccm_index_bits' => 11,
                        'dccm_ecc_width' => 7,
                        'dccm_size' => 64
                      },
            'icache' => {
                          'icache_tag_depth' => 64,
                          'icache_taddr_high' => 5,
                          'icache_ic_index' => 8,
                          'icache_tag_low' => '6',
                          'icache_data_cell' => 'ram_256x34',
                          'icache_enable' => '1',
                          'icache_tag_high' => 12,
                          'icache_ic_depth' => 8,
                          'icache_size' => 16,
                          'icache_ic_rows' => '256',
                          'icache_tag_cell' => 'ram_64x21'
                        },
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'tec_rv_icg' => 'clockhdr',
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
                            }
                          ],
            'num_mmode_perf_regs' => '4',
            'protection' => {
                              'data_access_addr0' => '0x00000000',
                              'data_access_enable4' => '0x0',
                              'inst_access_addr1' => '0x00000000',
                              'data_access_addr1' => '0x00000000',
                              'data_access_enable7' => '0x0',
                              'inst_access_mask2' => '0xffffffff',
                              'data_access_enable1' => '0x0',
                              'data_access_enable3' => '0x0',
                              'data_access_addr4' => '0x00000000',
                              'inst_access_addr7' => '0x00000000',
                              'inst_access_enable3' => '0x0',
                              'data_access_mask6' => '0xffffffff',
                              'inst_access_mask6' => '0xffffffff',
                              'inst_access_addr4' => '0x00000000',
                              'inst_access_mask1' => '0xffffffff',
                              'inst_access_addr6' => '0x00000000',
                              'inst_access_addr2' => '0x00000000',
                              'inst_access_enable7' => '0x0',
                              'inst_access_enable1' => '0x0',
                              'inst_access_mask0' => '0xffffffff',
                              'data_access_enable0' => '0x0',
                              'data_access_enable5' => '0x0',
                              'inst_access_enable0' => '0x0',
                              'inst_access_enable5' => '0x0',
                              'data_access_mask3' => '0xffffffff',
                              'data_access_enable6' => '0x0',
                              'data_access_addr2' => '0x00000000',
                              'inst_access_enable6' => '0x0',
                              'inst_access_enable2' => '0x0',
                              'inst_access_enable4' => '0x0',
                              'inst_access_addr3' => '0x00000000',
                              'data_access_addr7' => '0x00000000',
                              'data_access_addr3' => '0x00000000',
                              'data_access_mask1' => '0xffffffff',
                              'data_access_mask5' => '0xffffffff',
                              'inst_access_addr0' => '0x00000000',
                              'data_access_enable2' => '0x0',
                              'data_access_addr5' => '0x00000000',
                              'inst_access_mask5' => '0xffffffff',
                              'data_access_mask7' => '0xffffffff',
                              'inst_access_mask3' => '0xffffffff',
                              'data_access_mask0' => '0xffffffff',
                              'data_access_mask4' => '0xffffffff',
                              'inst_access_mask4' => '0xffffffff',
                              'inst_access_mask7' => '0xffffffff',
                              'inst_access_addr5' => '0x00000000',
                              'data_access_mask2' => '0xffffffff',
                              'data_access_addr6' => '0x00000000'
                            },
            'target' => 'default',
            'harts' => 1,
            'core' => {
                        'fpga_optimize' => '1',
                        'dec_instbuf_depth' => '4',
                        'lsu_num_nbload_width' => '3',
                        'lsu_stbuf_depth' => '8',
                        'lsu_num_nbload' => '8',
                        'dma_buf_depth' => '4'
                      },
            'regwidth' => '32',
            'bus' => {
                       'dma_bus_tag' => '1',
                       'ifu_bus_tag' => '3',
                       'sb_bus_tag' => '1',
                       'lsu_bus_tag' => 4
                     },
            'pic' => {
                       'pic_meipt_offset' => '0x3004',
                       'pic_int_words' => 1,
                       'pic_region' => '0xf',
                       'pic_meip_offset' => '0x1000',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_meie_offset' => '0x2000',
                       'pic_total_int_plus1' => 9,
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_total_int' => 8,
                       'pic_bits' => 15,
                       'pic_size' => 32,
                       'pic_base_addr' => '0xf00c0000',
                       'pic_meipl_offset' => '0x0000',
                       'pic_offset' => '0xc0000'
                     },
            'memmap' => {
                          'external_prog' => '0xb0000000',
                          'unused_region7' => '0x70000000',
                          'unused_region5' => '0x50000000',
                          'unused_region4' => '0x40000000',
                          'unused_region9' => '0x90000000',
                          'unused_region2' => '0x20000000',
                          'unused_region6' => '0x60000000',
                          'unused_region3' => '0x30000000',
                          'serialio' => '0xd0580000',
                          'debug_sb_mem' => '0xb0580000',
                          'unused_region0' => '0x00000000',
                          'unused_region1' => '0x10000000',
                          'external_data' => '0xc0580000',
                          'external_data_1' => '0x00000000'
                        }
          );
1;
