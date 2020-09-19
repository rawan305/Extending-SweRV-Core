#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by nimrodb on Mon Aug 10 21:42:54 IDT 2020
# 
#  cmd:    swerv -target=default 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'numiregs' => '32',
            'xlen' => 32,
            'verilator' => '',
            'pic' => {
                       'pic_total_int' => 8,
                       'pic_meipt_offset' => '0x3004',
                       'pic_region' => '0xf',
                       'pic_size' => 32,
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_total_int_plus1' => 9,
                       'pic_meip_offset' => '0x1000',
                       'pic_offset' => '0xc0000',
                       'pic_base_addr' => '0xf00c0000',
                       'pic_int_words' => 1,
                       'pic_bits' => 15,
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_meipl_offset' => '0x0000',
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meie_offset' => '0x2000'
                     },
            'bus' => {
                       'dma_bus_tag' => '1',
                       'lsu_bus_tag' => 4,
                       'ifu_bus_tag' => '3',
                       'sb_bus_tag' => '1'
                     },
            'iccm' => {
                        'iccm_bank_bits' => 3,
                        'iccm_data_cell' => 'ram_16384x39',
                        'iccm_index_bits' => 14,
                        'iccm_size_512' => '',
                        'iccm_size' => 512,
                        'iccm_bits' => 19,
                        'iccm_sadr' => '0xee000000',
                        'iccm_rows' => '16384',
                        'iccm_num_banks_8' => '',
                        'iccm_reserved' => '0x1000',
                        'iccm_num_banks' => '8',
                        'iccm_region' => '0xe',
                        'iccm_offset' => '0xe000000',
                        'iccm_eadr' => '0xee07ffff'
                      },
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'core' => {
                        'dma_buf_depth' => '4',
                        'fpga_optimize' => '1',
                        'lsu_num_nbload' => '8',
                        'lsu_stbuf_depth' => '8',
                        'lsu_num_nbload_width' => '3',
                        'dec_instbuf_depth' => '4'
                      },
            'tec_rv_icg' => 'clockhdr',
            'max_mmode_perf_event' => '50',
            'btb' => {
                       'btb_index1_hi' => 5,
                       'btb_index3_hi' => 9,
                       'btb_btag_size' => 9,
                       'btb_index1_lo' => '4',
                       'btb_size' => 32,
                       'btb_array_depth' => 4,
                       'btb_addr_lo' => '4',
                       'btb_btag_fold' => 1,
                       'btb_index2_lo' => 6,
                       'btb_index2_hi' => 7,
                       'btb_index3_lo' => 8,
                       'btb_addr_hi' => 5
                     },
            'bht' => {
                       'bht_array_depth' => 16,
                       'bht_ghr_range' => '4:0',
                       'bht_addr_lo' => '4',
                       'bht_ghr_pad2' => 'fghr[4:3],2\'b0',
                       'bht_hash_string' => '{ghr[3:2] ^ {ghr[3+1], {4-1-2{1\'b0} } },hashin[5:4]^ghr[2-1:0]}',
                       'bht_ghr_pad' => 'fghr[4],3\'b0',
                       'bht_size' => 128,
                       'bht_ghr_size' => 5,
                       'bht_addr_hi' => 7
                     },
            'harts' => 1,
            'memmap' => {
                          'unused_region0' => '0x00000000',
                          'unused_region1' => '0x10000000',
                          'external_data_1' => '0x00000000',
                          'unused_region3' => '0x30000000',
                          'unused_region2' => '0x20000000',
                          'unused_region4' => '0x40000000',
                          'debug_sb_mem' => '0xb0580000',
                          'unused_region5' => '0x50000000',
                          'unused_region6' => '0x60000000',
                          'external_data' => '0xc0580000',
                          'unused_region7' => '0x70000000',
                          'serialio' => '0xd0580000',
                          'unused_region9' => '0x90000000',
                          'external_prog' => '0xb0000000'
                        },
            'testbench' => {
                             'sterr_rollback' => '0',
                             'build_axi4' => '1',
                             'assert_on' => '',
                             'ext_addrwidth' => '32',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'RV_TOP' => '`TOP.rvtop',
                             'lderr_rollback' => '1',
                             'SDVT_AHB' => '1',
                             'clock_period' => '100',
                             'ext_datawidth' => '64',
                             'datawidth' => '64',
                             'TOP' => 'tb_top'
                           },
            'nmi_vec' => '0x11110000',
            'num_mmode_perf_regs' => '4',
            'even_odd_trigger_chains' => 'true',
            'target' => 'default',
            'reset_vec' => '0x80000000',
            'dccm' => {
                        'dccm_region' => '0xf',
                        'dccm_num_banks' => '8',
                        'dccm_bits' => 16,
                        'dccm_bank_bits' => 3,
                        'lsu_sb_bits' => 16,
                        'dccm_sadr' => '0xf0040000',
                        'dccm_data_cell' => 'ram_2048x39',
                        'dccm_width_bits' => 2,
                        'dccm_data_width' => 32,
                        'dccm_enable' => '1',
                        'dccm_num_banks_8' => '',
                        'dccm_size' => 64,
                        'dccm_offset' => '0x40000',
                        'dccm_fdata_width' => 39,
                        'dccm_size_64' => '',
                        'dccm_rows' => '2048',
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_index_bits' => 11,
                        'dccm_byte_width' => '4',
                        'dccm_ecc_width' => 7,
                        'dccm_reserved' => '0x1000'
                      },
            'physical' => '1',
            'icache' => {
                          'icache_tag_cell' => 'ram_64x21',
                          'icache_tag_low' => '6',
                          'icache_enable' => '1',
                          'icache_taddr_high' => 5,
                          'icache_ic_index' => 8,
                          'icache_size' => 16,
                          'icache_ic_rows' => '256',
                          'icache_data_cell' => 'ram_256x34',
                          'icache_ic_depth' => 8,
                          'icache_tag_high' => 12,
                          'icache_tag_depth' => 64
                        },
            'protection' => {
                              'inst_access_addr1' => '0x00000000',
                              'data_access_addr6' => '0x00000000',
                              'data_access_mask6' => '0xffffffff',
                              'inst_access_mask1' => '0xffffffff',
                              'data_access_addr7' => '0x00000000',
                              'data_access_enable7' => '0x0',
                              'inst_access_mask4' => '0xffffffff',
                              'data_access_addr0' => '0x00000000',
                              'data_access_mask5' => '0xffffffff',
                              'data_access_enable0' => '0x0',
                              'inst_access_enable3' => '0x0',
                              'inst_access_enable4' => '0x0',
                              'inst_access_addr6' => '0x00000000',
                              'data_access_enable6' => '0x0',
                              'inst_access_mask0' => '0xffffffff',
                              'data_access_addr1' => '0x00000000',
                              'inst_access_mask2' => '0xffffffff',
                              'inst_access_addr0' => '0x00000000',
                              'data_access_enable1' => '0x0',
                              'data_access_enable4' => '0x0',
                              'inst_access_addr7' => '0x00000000',
                              'inst_access_enable0' => '0x0',
                              'inst_access_addr4' => '0x00000000',
                              'data_access_addr5' => '0x00000000',
                              'data_access_addr3' => '0x00000000',
                              'data_access_mask0' => '0xffffffff',
                              'data_access_mask1' => '0xffffffff',
                              'inst_access_enable5' => '0x0',
                              'inst_access_mask5' => '0xffffffff',
                              'data_access_mask3' => '0xffffffff',
                              'data_access_enable5' => '0x0',
                              'data_access_mask7' => '0xffffffff',
                              'inst_access_enable2' => '0x0',
                              'inst_access_enable7' => '0x0',
                              'inst_access_enable1' => '0x0',
                              'inst_access_mask3' => '0xffffffff',
                              'inst_access_addr2' => '0x00000000',
                              'data_access_enable3' => '0x0',
                              'data_access_mask2' => '0xffffffff',
                              'inst_access_addr5' => '0x00000000',
                              'inst_access_enable6' => '0x0',
                              'inst_access_mask7' => '0xffffffff',
                              'data_access_enable2' => '0x0',
                              'inst_access_mask6' => '0xffffffff',
                              'inst_access_addr3' => '0x00000000',
                              'data_access_addr2' => '0x00000000',
                              'data_access_mask4' => '0xffffffff',
                              'data_access_addr4' => '0x00000000'
                            },
            'csr' => {
                       'mvendorid' => {
                                        'mask' => '0x0',
                                        'exists' => 'true',
                                        'reset' => '0x45'
                                      },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter6' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'mcgc' => {
                                   'reset' => '0x0',
                                   'mask' => '0x000001ff',
                                   'exists' => 'true',
                                   'poke_mask' => '0x000001ff',
                                   'number' => '0x7f8'
                                 },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter6h' => {
                                            'mask' => '0xffffffff',
                                            'exists' => 'true',
                                            'reset' => '0x0'
                                          },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter4' => {
                                           'mask' => '0xffffffff',
                                           'exists' => 'true',
                                           'reset' => '0x0'
                                         },
                       'mitcnt0' => {
                                      'mask' => '0xffffffff',
                                      'exists' => 'true',
                                      'reset' => '0x0',
                                      'number' => '0x7d2'
                                    },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'mitbnd0' => {
                                      'number' => '0x7d3',
                                      'mask' => '0xffffffff',
                                      'exists' => 'true',
                                      'reset' => '0xffffffff'
                                    },
                       'mhpmcounter4h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'mhpmevent4' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'mhpmcounter5' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'tselect' => {
                                      'exists' => 'true',
                                      'mask' => '0x3',
                                      'reset' => '0x0'
                                    },
                       'mfdc' => {
                                   'mask' => '0x000707ff',
                                   'exists' => 'true',
                                   'reset' => '0x00070000',
                                   'number' => '0x7f9'
                                 },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'dicad0' => {
                                     'number' => '0x7c9',
                                     'reset' => '0x0',
                                     'debug' => 'true',
                                     'exists' => 'true',
                                     'mask' => '0xffffffff',
                                     'comment' => 'Cache diagnostics.'
                                   },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'mpmc' => {
                                   'comment' => 'Core pause: Implemented as read only.',
                                   'reset' => '0x0',
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'number' => '0x7c6'
                                 },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'mhpmevent3' => {
                                         'reset' => '0x0',
                                         'exists' => 'true',
                                         'mask' => '0xffffffff'
                                       },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'mitcnt1' => {
                                      'number' => '0x7d5',
                                      'exists' => 'true',
                                      'mask' => '0xffffffff',
                                      'reset' => '0x0'
                                    },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'dcsr' => {
                                   'exists' => 'true',
                                   'mask' => '0x00008c04',
                                   'poke_mask' => '0x00008dcc',
                                   'reset' => '0x40000003'
                                 },
                       'mhpmcounter3' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'micect' => {
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'mask' => '0xffffffff',
                                     'number' => '0x7f0'
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
                       'mhpmevent6' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'dicad1' => {
                                     'number' => '0x7ca',
                                     'comment' => 'Cache diagnostics.',
                                     'mask' => '0x3',
                                     'debug' => 'true',
                                     'exists' => 'true',
                                     'reset' => '0x0'
                                   },
                       'dicago' => {
                                     'number' => '0x7cb',
                                     'reset' => '0x0',
                                     'debug' => 'true',
                                     'mask' => '0x0',
                                     'exists' => 'true',
                                     'comment' => 'Cache diagnostics.'
                                   },
                       'dmst' => {
                                   'number' => '0x7c4',
                                   'debug' => 'true',
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'reset' => '0x0',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.'
                                 },
                       'miccmect' => {
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'mask' => '0xffffffff',
                                       'number' => '0x7f1'
                                     },
                       'mstatus' => {
                                      'reset' => '0x1800',
                                      'mask' => '0x88',
                                      'exists' => 'true'
                                    },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'meicpct' => {
                                      'number' => '0xbca',
                                      'comment' => 'External claim id/priority capture.',
                                      'reset' => '0x0',
                                      'mask' => '0x0',
                                      'exists' => 'true'
                                    },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'misa' => {
                                   'reset' => '0x40001104',
                                   'mask' => '0x0',
                                   'exists' => 'true'
                                 },
                       'mitbnd1' => {
                                      'mask' => '0xffffffff',
                                      'exists' => 'true',
                                      'reset' => '0xffffffff',
                                      'number' => '0x7d6'
                                    },
                       'mcpc' => {
                                   'number' => '0x7c2',
                                   'reset' => '0x0',
                                   'exists' => 'true',
                                   'mask' => '0x0'
                                 },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'mitctl0' => {
                                      'number' => '0x7d4',
                                      'reset' => '0x1',
                                      'mask' => '0x00000007',
                                      'exists' => 'true'
                                    },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'dicawics' => {
                                       'number' => '0x7c8',
                                       'debug' => 'true',
                                       'mask' => '0x0130fffc',
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'comment' => 'Cache diagnostics.'
                                     },
                       'marchid' => {
                                      'exists' => 'true',
                                      'mask' => '0x0',
                                      'reset' => '0x0000000b'
                                    },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'meipt' => {
                                    'number' => '0xbc9',
                                    'mask' => '0xf',
                                    'exists' => 'true',
                                    'reset' => '0x0',
                                    'comment' => 'External interrupt priority threshold.'
                                  },
                       'mhpmcounter3h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'meicidpl' => {
                                       'exists' => 'true',
                                       'mask' => '0xf',
                                       'reset' => '0x0',
                                       'comment' => 'External interrupt claim id priority level.',
                                       'number' => '0xbcb'
                                     },
                       'mhpmevent5' => {
                                         'mask' => '0xffffffff',
                                         'exists' => 'true',
                                         'reset' => '0x0'
                                       },
                       'mhpmcounter5h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'mie' => {
                                  'reset' => '0x0',
                                  'exists' => 'true',
                                  'mask' => '0x70000888'
                                },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'mimpid' => {
                                     'exists' => 'true',
                                     'mask' => '0x0',
                                     'reset' => '0x4'
                                   },
                       'meicurpl' => {
                                       'comment' => 'External interrupt current priority level.',
                                       'mask' => '0xf',
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'number' => '0xbcc'
                                     },
                       'mip' => {
                                  'poke_mask' => '0x70000888',
                                  'exists' => 'true',
                                  'mask' => '0x0',
                                  'reset' => '0x0'
                                },
                       'mitctl1' => {
                                      'number' => '0x7d7',
                                      'reset' => '0x1',
                                      'mask' => '0x00000007',
                                      'exists' => 'true'
                                    }
                     },
            'triggers' => [
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
            'regwidth' => '32'
          );
1;
