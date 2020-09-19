#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by nimrodb on Sat Sep 19 23:09:06 IDT 2020
# 
#  cmd:    swerv -target=default -set=iccm_enable 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'reset_vec' => '0x80000000',
            'protection' => {
                              'data_access_mask4' => '0xffffffff',
                              'data_access_enable3' => '1',
                              'data_access_mask1' => '0x3fffffff',
                              'inst_access_enable0' => '1',
                              'data_access_mask7' => '0xffffffff',
                              'data_access_addr3' => '0x80000000',
                              'inst_access_addr3' => '0x80000000',
                              'data_access_addr0' => '0x0',
                              'inst_access_enable5' => '0x0',
                              'inst_access_addr7' => '0x00000000',
                              'inst_access_addr2' => '0xa0000000',
                              'inst_access_addr4' => '0x00000000',
                              'inst_access_mask6' => '0xffffffff',
                              'data_access_addr4' => '0x00000000',
                              'inst_access_mask4' => '0xffffffff',
                              'inst_access_mask1' => '0x3fffffff',
                              'inst_access_mask5' => '0xffffffff',
                              'inst_access_addr6' => '0x00000000',
                              'data_access_enable2' => '1',
                              'inst_access_enable2' => '1',
                              'data_access_enable1' => '1',
                              'inst_access_mask7' => '0xffffffff',
                              'inst_access_addr5' => '0x00000000',
                              'data_access_mask0' => '0x7fffffff',
                              'inst_access_enable1' => '1',
                              'data_access_enable6' => '0x0',
                              'data_access_enable5' => '0x0',
                              'data_access_enable4' => '0x0',
                              'data_access_mask3' => '0x0fffffff',
                              'inst_access_mask3' => '0x0fffffff',
                              'inst_access_enable6' => '0x0',
                              'inst_access_mask0' => '0x7fffffff',
                              'inst_access_enable4' => '0x0',
                              'data_access_addr1' => '0xc0000000',
                              'data_access_mask6' => '0xffffffff',
                              'inst_access_enable7' => '0x0',
                              'data_access_addr5' => '0x00000000',
                              'data_access_enable7' => '0x0',
                              'inst_access_enable3' => '1',
                              'data_access_addr7' => '0x00000000',
                              'data_access_mask2' => '0x1fffffff',
                              'data_access_enable0' => '1',
                              'inst_access_addr0' => '0x0',
                              'data_access_addr2' => '0xa0000000',
                              'data_access_mask5' => '0xffffffff',
                              'inst_access_addr1' => '0xc0000000',
                              'data_access_addr6' => '0x00000000',
                              'inst_access_mask2' => '0x1fffffff'
                            },
            'tec_rv_icg' => 'clockhdr',
            'bht' => {
                       'bht_size' => 512,
                       'bht_ghr_pad' => 'fghr[2:0],3\'b0',
                       'bht_hash_string' => '{hashin[7+2:5]^ghr[7-1:2], ghr[1:0]}// cf2',
                       'bht_array_depth' => 128,
                       'bht_ghr_size' => 7,
                       'bht_addr_lo' => '3',
                       'bht_ghr_pad2' => 'fghr[3:0],2\'b0',
                       'bht_ghr_hash_1' => '',
                       'bht_addr_hi' => 9,
                       'bht_ghr_range' => '6:0'
                     },
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'triggers' => [
                            {
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'poke_mask' => [
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
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
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
            'btb' => {
                       'btb_btag_size' => 5,
                       'btb_index3_hi' => 23,
                       'btb_fold2_index_hash' => 0,
                       'btb_index2_hi' => 16,
                       'btb_addr_lo' => '3',
                       'btb_array_depth' => 128,
                       'btb_index2_lo' => 10,
                       'btb_index1_lo' => '3',
                       'btb_addr_hi' => 9,
                       'btb_index3_lo' => 17,
                       'btb_size' => 512,
                       'btb_index1_hi' => 9,
                       'btb_btag_fold' => 0
                     },
            'nmi_vec' => '0x11110000',
            'num_mmode_perf_regs' => '4',
            'dccm' => {
                        'dccm_region' => '0xf',
                        'dccm_bank_bits' => 3,
                        'dccm_fdata_width' => 39,
                        'dccm_byte_width' => '4',
                        'dccm_num_banks_8' => '',
                        'dccm_data_cell' => 'ram_2048x39',
                        'dccm_index_bits' => 11,
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_ecc_width' => 7,
                        'dccm_enable' => '1',
                        'dccm_size_64' => '',
                        'dccm_rows' => '2048',
                        'dccm_size' => 64,
                        'dccm_sadr' => '0xf0040000',
                        'dccm_reserved' => '0x1400',
                        'dccm_width_bits' => 2,
                        'dccm_data_width' => 32,
                        'lsu_sb_bits' => 16,
                        'dccm_num_banks' => '8',
                        'dccm_offset' => '0x40000',
                        'dccm_bits' => 16
                      },
            'xlen' => 32,
            'even_odd_trigger_chains' => 'true',
            'csr' => {
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter3h' => {
                                            'mask' => '0xffffffff',
                                            'exists' => 'true',
                                            'reset' => '0x0'
                                          },
                       'mfdhs' => {
                                    'number' => '0x7cf',
                                    'exists' => 'true',
                                    'reset' => '0x0',
                                    'comment' => 'Force Debug Halt Status',
                                    'mask' => '0x00000003'
                                  },
                       'tselect' => {
                                      'exists' => 'true',
                                      'reset' => '0x0',
                                      'mask' => '0x3'
                                    },
                       'mitctl1' => {
                                      'mask' => '0x0000000f',
                                      'reset' => '0x1',
                                      'exists' => 'true',
                                      'number' => '0x7d7'
                                    },
                       'dcsr' => {
                                   'debug' => 'true',
                                   'poke_mask' => '0x00008dcc',
                                   'mask' => '0x00008c04',
                                   'reset' => '0x40000003',
                                   'exists' => 'true'
                                 },
                       'mimpid' => {
                                     'mask' => '0x0',
                                     'exists' => 'true',
                                     'reset' => '0x2'
                                   },
                       'mcgc' => {
                                   'number' => '0x7f8',
                                   'shared' => 'true',
                                   'reset' => '0x0',
                                   'exists' => 'true',
                                   'mask' => '0x000001ff',
                                   'poke_mask' => '0x000001ff'
                                 },
                       'misa' => {
                                   'exists' => 'true',
                                   'reset' => '0x40001105',
                                   'mask' => '0x0'
                                 },
                       'mstatus' => {
                                      'mask' => '0x88',
                                      'reset' => '0x1800',
                                      'exists' => 'true'
                                    },
                       'mhpmevent4' => {
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0',
                                         'exists' => 'true'
                                       },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'mhpmcounter4h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'mitcnt1' => {
                                      'mask' => '0xffffffff',
                                      'exists' => 'true',
                                      'reset' => '0x0',
                                      'number' => '0x7d5'
                                    },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'dmst' => {
                                   'mask' => '0x0',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'exists' => 'true',
                                   'reset' => '0x0',
                                   'debug' => 'true',
                                   'number' => '0x7c4'
                                 },
                       'mitbnd0' => {
                                      'exists' => 'true',
                                      'reset' => '0xffffffff',
                                      'mask' => '0xffffffff',
                                      'number' => '0x7d3'
                                    },
                       'mitctl0' => {
                                      'number' => '0x7d4',
                                      'exists' => 'true',
                                      'reset' => '0x1',
                                      'mask' => '0x00000007'
                                    },
                       'dicawics' => {
                                       'number' => '0x7c8',
                                       'debug' => 'true',
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'comment' => 'Cache diagnostics.',
                                       'mask' => '0x0130fffc'
                                     },
                       'dicago' => {
                                     'debug' => 'true',
                                     'number' => '0x7cb',
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'mask' => '0x0'
                                   },
                       'mhpmevent3' => {
                                         'mask' => '0xffffffff',
                                         'exists' => 'true',
                                         'reset' => '0x0'
                                       },
                       'mitcnt0' => {
                                      'number' => '0x7d2',
                                      'mask' => '0xffffffff',
                                      'reset' => '0x0',
                                      'exists' => 'true'
                                    },
                       'mhpmcounter5h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'mvendorid' => {
                                        'exists' => 'true',
                                        'reset' => '0x45',
                                        'mask' => '0x0'
                                      },
                       'mhpmcounter3' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'meicurpl' => {
                                       'number' => '0xbcc',
                                       'mask' => '0xf',
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'comment' => 'External interrupt current priority level.'
                                     },
                       'dicad0' => {
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'mask' => '0xffffffff',
                                     'debug' => 'true',
                                     'number' => '0x7c9'
                                   },
                       'mhpmevent5' => {
                                         'exists' => 'true',
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff'
                                       },
                       'mnmipdel' => {
                                       'reset' => '0x1',
                                       'exists' => 'true',
                                       'comment' => 'NMI pin delegation',
                                       'mask' => '0x1',
                                       'shared' => 'true',
                                       'number' => '0x7fe'
                                     },
                       'mhpmcounter5' => {
                                           'exists' => 'true',
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff'
                                         },
                       'mhpmcounter4' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'mfdc' => {
                                   'mask' => '0x00070f4d',
                                   'exists' => 'true',
                                   'reset' => '0x00070040',
                                   'number' => '0x7f9',
                                   'shared' => 'true'
                                 },
                       'mhartstart' => {
                                         'reset' => '0x1',
                                         'exists' => 'true',
                                         'comment' => 'Hart start mask',
                                         'mask' => '0x0',
                                         'number' => '0x7fc',
                                         'shared' => 'true'
                                       },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter6' => {
                                           'exists' => 'true',
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff'
                                         },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'mcpc' => {
                                   'exists' => 'true',
                                   'reset' => '0x0',
                                   'comment' => 'Core pause',
                                   'mask' => '0x0',
                                   'number' => '0x7c2'
                                 },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'mip' => {
                                  'reset' => '0x0',
                                  'exists' => 'true',
                                  'poke_mask' => '0x70000888',
                                  'mask' => '0x0'
                                },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'micect' => {
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'mask' => '0xffffffff',
                                     'number' => '0x7f0'
                                   },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'mitbnd1' => {
                                      'number' => '0x7d6',
                                      'exists' => 'true',
                                      'reset' => '0xffffffff',
                                      'mask' => '0xffffffff'
                                    },
                       'marchid' => {
                                      'mask' => '0x0',
                                      'exists' => 'true',
                                      'reset' => '0x00000011'
                                    },
                       'dicad1' => {
                                     'number' => '0x7ca',
                                     'debug' => 'true',
                                     'mask' => '0x3',
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'comment' => 'Cache diagnostics.'
                                   },
                       'mhpmevent6' => {
                                         'mask' => '0xffffffff',
                                         'exists' => 'true',
                                         'reset' => '0x0'
                                       },
                       'mscause' => {
                                      'number' => '0x7ff',
                                      'mask' => '0x0000000f',
                                      'exists' => 'true',
                                      'reset' => '0x0'
                                    },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'mrac' => {
                                   'number' => '0x7c0',
                                   'shared' => 'true',
                                   'comment' => 'Memory region io and cache control.',
                                   'reset' => '0x0',
                                   'exists' => 'true',
                                   'mask' => '0xffffffff'
                                 },
                       'meipt' => {
                                    'mask' => '0xf',
                                    'reset' => '0x0',
                                    'exists' => 'true',
                                    'comment' => 'External interrupt priority threshold.',
                                    'number' => '0xbc9'
                                  },
                       'mhpmcounter6h' => {
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0',
                                            'exists' => 'true'
                                          },
                       'miccmect' => {
                                       'mask' => '0xffffffff',
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'number' => '0x7f1'
                                     },
                       'mcountinhibit' => {
                                            'commnet' => 'Performance counter inhibit. One bit per counter.',
                                            'mask' => '0x7d',
                                            'poke_mask' => '0x7d',
                                            'reset' => '0x0',
                                            'exists' => 'true'
                                          },
                       'mpmc' => {
                                   'number' => '0x7c6',
                                   'exists' => 'true',
                                   'reset' => '0x2',
                                   'mask' => '0x2'
                                 },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'mie' => {
                                  'mask' => '0x70000888',
                                  'exists' => 'true',
                                  'reset' => '0x0'
                                },
                       'mdccmect' => {
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'mask' => '0xffffffff',
                                       'number' => '0x7f2'
                                     },
                       'mhartid' => {
                                      'reset' => '0x0',
                                      'exists' => 'true',
                                      'poke_mask' => '0xfffffff0',
                                      'mask' => '0x0'
                                    },
                       'meicidpl' => {
                                       'number' => '0xbcb',
                                       'comment' => 'External interrupt claim id priority level.',
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'mask' => '0xf'
                                     },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'mhartnum' => {
                                       'mask' => '0x0',
                                       'reset' => '0x1',
                                       'exists' => 'true',
                                       'comment' => 'Hart count',
                                       'shared' => 'true',
                                       'number' => '0xfc4'
                                     },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'mfdht' => {
                                    'exists' => 'true',
                                    'reset' => '0x0',
                                    'comment' => 'Force Debug Halt Threshold',
                                    'mask' => '0x0000003f',
                                    'number' => '0x7ce',
                                    'shared' => 'true'
                                  }
                     },
            'numiregs' => '32',
            'physical' => '1',
            'memmap' => {
                          'debug_sb_mem' => '0xb0580000',
                          'external_data' => '0xc0580000',
                          'serialio' => '0xd0580000',
                          'unused_region5' => '0x50000000',
                          'unused_region7' => '0x70000000',
                          'unused_region6' => '0x60000000',
                          'unused_region4' => '0x40000000',
                          'unused_region1' => '0x10000000',
                          'unused_region3' => '0x30000000',
                          'external_mem_hole' => '0x90000000',
                          'unused_region0' => '0x00000000',
                          'external_data_1' => '0x00000000',
                          'external_prog' => '0xb0000000',
                          'unused_region2' => '0x20000000'
                        },
            'config_key' => '32\'hdeadbeef',
            'bus' => {
                       'sb_bus_tag' => 1,
                       'ifu_bus_tag' => '4',
                       'lsu_bus_prty' => '2',
                       'dma_bus_prty' => '2',
                       'bus_prty_default' => '3',
                       'lsu_bus_id' => 1,
                       'dma_bus_id' => 1,
                       'lsu_bus_tag' => '4',
                       'dma_bus_tag' => 1,
                       'sb_bus_id' => 1,
                       'sb_bus_prty' => '2',
                       'ifu_bus_id' => 1,
                       'ifu_bus_prty' => 2
                     },
            'harts' => 1,
            'iccm' => {
                        'iccm_data_cell' => 'ram_4096x39',
                        'iccm_offset' => '0xe000000',
                        'iccm_num_banks_4' => '',
                        'iccm_bank_bits' => 2,
                        'iccm_index_bits' => 12,
                        'iccm_num_banks' => '4',
                        'iccm_bank_hi' => 3,
                        'iccm_rows' => '4096',
                        'iccm_sadr' => '0xee000000',
                        'iccm_region' => '0xe',
                        'iccm_reserved' => '0x1000',
                        'iccm_bits' => 16,
                        'iccm_enable' => 1,
                        'iccm_eadr' => '0xee00ffff',
                        'iccm_size_64' => '',
                        'iccm_size' => 64,
                        'iccm_bank_index_lo' => 4
                      },
            'testbench' => {
                             'sterr_rollback' => '0',
                             'build_axi4' => 1,
                             'clock_period' => '100',
                             'TOP' => 'tb_top',
                             'RV_TOP' => '`TOP.rvtop',
                             'lderr_rollback' => '1',
                             'assert_on' => '',
                             'datawidth' => '64',
                             'SDVT_AHB' => '1',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'ext_datawidth' => '64',
                             'ext_addrwidth' => '32',
                             'build_axi_native' => 1
                           },
            'regwidth' => '32',
            'max_mmode_perf_event' => '516',
            'icache' => {
                          'icache_num_lines_way' => '128',
                          'icache_index_hi' => 12,
                          'icache_status_bits' => 3,
                          'icache_beat_addr_hi' => 5,
                          'icache_ln_sz' => 64,
                          'icache_bank_lo' => 3,
                          'icache_bank_width' => 8,
                          'icache_tag_index_lo' => 6,
                          'icache_tag_depth' => 128,
                          'icache_data_depth' => '512',
                          'icache_num_lines_bank' => 64,
                          'icache_beat_bits' => 3,
                          'icache_banks_way' => 2,
                          'icache_scnd_last' => 6,
                          'icache_bank_bits' => 1,
                          'icache_data_width' => 64,
                          'icache_tag_lo' => 13,
                          'icache_num_beats' => 8,
                          'icache_2banks' => '1',
                          'icache_enable' => 1,
                          'icache_bank_hi' => 3,
                          'icache_data_cell' => 'ram_512x71',
                          'icache_fdata_width' => 71,
                          'icache_tag_cell' => 'ram_128x25',
                          'icache_num_ways' => 4,
                          'icache_size' => 32,
                          'icache_num_lines' => 512,
                          'icache_data_index_lo' => 4,
                          'icache_ecc' => '1'
                        },
            'target' => 'default',
            'core' => {
                        'lsu_num_nbload' => '8',
                        'lsu_num_nbload_width' => '3',
                        'dma_buf_depth' => '5',
                        'fast_interrupt_redirect' => '1',
                        'lsu_stbuf_depth' => '10',
                        'fpga_optimize' => '0',
                        'iccm_only' => 'derived',
                        'timer_legal_en' => '1',
                        'num_threads' => 1,
                        'iccm_icache' => 1,
                        'no_iccm_no_icache' => 'derived',
                        'icache_only' => 'derived'
                      },
            'pic' => {
                       'pic_mpiccfg_count' => 1,
                       'pic_meip_mask' => '0x0',
                       'pic_meipl_offset' => '0x0000',
                       'pic_meip_count' => 4,
                       'pic_meitp_count' => 127,
                       'pic_meitp_mask' => '0x0',
                       'pic_meipl_mask' => '0xf',
                       'pic_mpiccfg_mask' => '0x1',
                       'pic_meie_offset' => '0x2000',
                       'pic_meigwctrl_mask' => '0x3',
                       'pic_meidels_count' => 127,
                       'pic_total_int_plus1' => 128,
                       'pic_offset' => '0xc0000',
                       'pic_bits' => 15,
                       'pic_total_int' => 127,
                       'pic_meitp_offset' => '0x1800',
                       'pic_int_words' => 4,
                       'pic_meidels_mask' => '0x1',
                       'pic_2cycle' => '1',
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_meigwclr_count' => 127,
                       'pic_meie_count' => 127,
                       'pic_meip_offset' => '0x1000',
                       'pic_meipt_mask' => '0x0',
                       'pic_meigwclr_mask' => '0x0',
                       'pic_meipl_count' => 127,
                       'pic_meipt_offset' => '0x3004',
                       'pic_base_addr' => '0xf00c0000',
                       'pic_region' => '0xf',
                       'pic_meipt_count' => 127,
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_meie_mask' => '0x1',
                       'pic_size' => 32,
                       'pic_meigwctrl_count' => 127
                     }
          );
1;
