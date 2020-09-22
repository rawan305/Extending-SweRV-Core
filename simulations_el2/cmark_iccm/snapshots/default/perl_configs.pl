#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by nimrodb on Mon Aug 10 21:55:37 IDT 2020
# 
#  cmd:    swerv -target=default -set=iccm_enable 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'btb' => {
                       'btb_size' => 512,
                       'btb_fold2_index_hash' => 0,
                       'btb_array_depth' => 256,
                       'btb_index1_hi' => 9,
                       'btb_index3_hi' => 25,
                       'btb_btag_size' => 5,
                       'btb_addr_hi' => 9,
                       'btb_index2_hi' => 17,
                       'btb_index1_lo' => '2',
                       'btb_btag_fold' => 0,
                       'btb_index3_lo' => 18,
                       'btb_addr_lo' => '2',
                       'btb_index2_lo' => 10
                     },
            'bus' => {
                       'dma_bus_id' => '1',
                       'lsu_bus_prty' => '2',
                       'bus_prty_default' => '3',
                       'dma_bus_prty' => '2',
                       'sb_bus_id' => '1',
                       'sb_bus_prty' => '2',
                       'lsu_bus_tag' => 3,
                       'ifu_bus_prty' => '2',
                       'ifu_bus_id' => '1',
                       'ifu_bus_tag' => '3',
                       'lsu_bus_id' => '1',
                       'sb_bus_tag' => 1,
                       'dma_bus_tag' => 1
                     },
            'csr' => {
                       'misa' => {
                                   'reset' => '0x40001104',
                                   'exists' => 'true',
                                   'mask' => '0x0'
                                 },
                       'dicago' => {
                                     'number' => '0x7cb',
                                     'mask' => '0x0',
                                     'comment' => 'Cache diagnostics.',
                                     'exists' => 'true',
                                     'reset' => '0x0',
                                     'debug' => 'true'
                                   },
                       'mhpmcounter5' => {
                                           'mask' => '0xffffffff',
                                           'exists' => 'true',
                                           'reset' => '0x0'
                                         },
                       'mcgc' => {
                                   'number' => '0x7f8',
                                   'mask' => '0x000001ff',
                                   'exists' => 'true',
                                   'reset' => '0x0',
                                   'poke_mask' => '0x000001ff'
                                 },
                       'miccmect' => {
                                       'number' => '0x7f1',
                                       'mask' => '0xffffffff',
                                       'exists' => 'true',
                                       'reset' => '0x0'
                                     },
                       'mitctl0' => {
                                      'mask' => '0x00000007',
                                      'number' => '0x7d4',
                                      'reset' => '0x1',
                                      'exists' => 'true'
                                    },
                       'meicurpl' => {
                                       'comment' => 'External interrupt current priority level.',
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'mask' => '0xf',
                                       'number' => '0xbcc'
                                     },
                       'tselect' => {
                                      'mask' => '0x3',
                                      'exists' => 'true',
                                      'reset' => '0x0'
                                    },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter5h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter4' => {
                                           'exists' => 'true',
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff'
                                         },
                       'mfdc' => {
                                   'mask' => '0x00070fff',
                                   'number' => '0x7f9',
                                   'exists' => 'true',
                                   'reset' => '0x00070040'
                                 },
                       'dmst' => {
                                   'mask' => '0x0',
                                   'number' => '0x7c4',
                                   'debug' => 'true',
                                   'exists' => 'true',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'reset' => '0x0'
                                 },
                       'dicawics' => {
                                       'debug' => 'true',
                                       'exists' => 'true',
                                       'comment' => 'Cache diagnostics.',
                                       'reset' => '0x0',
                                       'mask' => '0x0130fffc',
                                       'number' => '0x7c8'
                                     },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'mrac' => {
                                   'mask' => '0xffffffff',
                                   'number' => '0x7c0',
                                   'shared' => 'true',
                                   'comment' => 'Memory region io and cache control.',
                                   'exists' => 'true',
                                   'reset' => '0x0'
                                 },
                       'mhartid' => {
                                      'mask' => '0x0',
                                      'poke_mask' => '0xfffffff0',
                                      'reset' => '0x0',
                                      'exists' => 'true'
                                    },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'dicad1' => {
                                     'number' => '0x7ca',
                                     'mask' => '0x3',
                                     'debug' => 'true',
                                     'comment' => 'Cache diagnostics.',
                                     'exists' => 'true',
                                     'reset' => '0x0'
                                   },
                       'mitcnt1' => {
                                      'number' => '0x7d5',
                                      'mask' => '0xffffffff',
                                      'reset' => '0x0',
                                      'exists' => 'true'
                                    },
                       'mimpid' => {
                                     'reset' => '0x2',
                                     'exists' => 'true',
                                     'mask' => '0x0'
                                   },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'mhpmevent4' => {
                                         'reset' => '0x0',
                                         'exists' => 'true',
                                         'mask' => '0xffffffff'
                                       },
                       'mip' => {
                                  'poke_mask' => '0x70000888',
                                  'reset' => '0x0',
                                  'exists' => 'true',
                                  'mask' => '0x0'
                                },
                       'mpmc' => {
                                   'reset' => '0x2',
                                   'exists' => 'true',
                                   'mask' => '0x2',
                                   'number' => '0x7c6'
                                 },
                       'mitbnd0' => {
                                      'number' => '0x7d3',
                                      'mask' => '0xffffffff',
                                      'reset' => '0xffffffff',
                                      'exists' => 'true'
                                    },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'mhpmevent5' => {
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0',
                                         'exists' => 'true'
                                       },
                       'mhpmcounter6' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'mcpc' => {
                                   'exists' => 'true',
                                   'reset' => '0x0',
                                   'comment' => 'Core pause',
                                   'number' => '0x7c2',
                                   'mask' => '0x0'
                                 },
                       'mdccmect' => {
                                       'mask' => '0xffffffff',
                                       'number' => '0x7f2',
                                       'exists' => 'true',
                                       'reset' => '0x0'
                                     },
                       'mcountinhibit' => {
                                            'commnet' => 'Performance counter inhibit. One bit per counter.',
                                            'mask' => '0x7d',
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'poke_mask' => '0x7d'
                                          },
                       'mhpmcounter6h' => {
                                            'reset' => '0x0',
                                            'exists' => 'true',
                                            'mask' => '0xffffffff'
                                          },
                       'meicidpl' => {
                                       'mask' => '0xf',
                                       'number' => '0xbcb',
                                       'comment' => 'External interrupt claim id priority level.',
                                       'exists' => 'true',
                                       'reset' => '0x0'
                                     },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'mitbnd1' => {
                                      'exists' => 'true',
                                      'reset' => '0xffffffff',
                                      'number' => '0x7d6',
                                      'mask' => '0xffffffff'
                                    },
                       'marchid' => {
                                      'mask' => '0x0',
                                      'exists' => 'true',
                                      'reset' => '0x00000010'
                                    },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'dicad0' => {
                                     'exists' => 'true',
                                     'reset' => '0x0',
                                     'comment' => 'Cache diagnostics.',
                                     'debug' => 'true',
                                     'mask' => '0xffffffff',
                                     'number' => '0x7c9'
                                   },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter4h' => {
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0',
                                            'exists' => 'true'
                                          },
                       'mhpmcounter3h' => {
                                            'mask' => '0xffffffff',
                                            'exists' => 'true',
                                            'reset' => '0x0'
                                          },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'mitcnt0' => {
                                      'reset' => '0x0',
                                      'exists' => 'true',
                                      'number' => '0x7d2',
                                      'mask' => '0xffffffff'
                                    },
                       'mie' => {
                                  'exists' => 'true',
                                  'reset' => '0x0',
                                  'mask' => '0x70000888'
                                },
                       'mvendorid' => {
                                        'mask' => '0x0',
                                        'reset' => '0x45',
                                        'exists' => 'true'
                                      },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'meipt' => {
                                    'reset' => '0x0',
                                    'exists' => 'true',
                                    'comment' => 'External interrupt priority threshold.',
                                    'number' => '0xbc9',
                                    'mask' => '0xf'
                                  },
                       'mhpmevent3' => {
                                         'mask' => '0xffffffff',
                                         'exists' => 'true',
                                         'reset' => '0x0'
                                       },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter3' => {
                                           'exists' => 'true',
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff'
                                         },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'mstatus' => {
                                      'reset' => '0x1800',
                                      'exists' => 'true',
                                      'mask' => '0x88'
                                    },
                       'mscause' => {
                                      'mask' => '0x0000000f',
                                      'number' => '0x7ff',
                                      'reset' => '0x0',
                                      'exists' => 'true'
                                    },
                       'micect' => {
                                     'exists' => 'true',
                                     'reset' => '0x0',
                                     'number' => '0x7f0',
                                     'mask' => '0xffffffff'
                                   },
                       'mitctl1' => {
                                      'number' => '0x7d7',
                                      'mask' => '0x0000000f',
                                      'exists' => 'true',
                                      'reset' => '0x1'
                                    },
                       'mhpmevent6' => {
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0',
                                         'exists' => 'true'
                                       },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'dcsr' => {
                                   'mask' => '0x00008c04',
                                   'exists' => 'true',
                                   'reset' => '0x40000003',
                                   'poke_mask' => '0x00008dcc',
                                   'debug' => 'true'
                                 }
                     },
            'physical' => '1',
            'retstack' => {
                            'ret_stack_size' => '8'
                          },
            'memmap' => {
                          'external_prog' => '0xb0000000',
                          'debug_sb_mem' => '0xb0580000',
                          'unused_region3' => '0x30000000',
                          'external_mem_hole' => '0x90000000',
                          'external_data_1' => '0x00000000',
                          'unused_region1' => '0x10000000',
                          'unused_region2' => '0x20000000',
                          'external_data' => '0xc0580000',
                          'serialio' => '0xd0580000',
                          'unused_region4' => '0x40000000',
                          'unused_region6' => '0x60000000',
                          'unused_region0' => '0x00000000',
                          'unused_region7' => '0x70000000',
                          'unused_region5' => '0x50000000'
                        },
            'pic' => {
                       'pic_meipl_count' => 31,
                       'pic_meigwclr_mask' => '0x0',
                       'pic_meigwclr_count' => 31,
                       'pic_base_addr' => '0xf00c0000',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_total_int_plus1' => 32,
                       'pic_total_int' => 31,
                       'pic_meip_mask' => '0x0',
                       'pic_int_words' => 1,
                       'pic_meipt_count' => 31,
                       'pic_meipt_mask' => '0x0',
                       'pic_meie_mask' => '0x1',
                       'pic_meie_count' => 31,
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_meipt_offset' => '0x3004',
                       'pic_bits' => 15,
                       'pic_meipl_mask' => '0xf',
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meip_offset' => '0x1000',
                       'pic_meie_offset' => '0x2000',
                       'pic_mpiccfg_mask' => '0x1',
                       'pic_meip_count' => 4,
                       'pic_mpiccfg_count' => 1,
                       'pic_meigwctrl_count' => 31,
                       'pic_offset' => '0xc0000',
                       'pic_meigwctrl_mask' => '0x3',
                       'pic_size' => 32,
                       'pic_meipl_offset' => '0x0000',
                       'pic_region' => '0xf'
                     },
            'num_mmode_perf_regs' => '4',
            'target' => 'default',
            'tec_rv_icg' => 'clockhdr',
            'bht' => {
                       'bht_ghr_hash_1' => '',
                       'bht_addr_hi' => 9,
                       'bht_array_depth' => 256,
                       'bht_ghr_range' => '7:0',
                       'bht_hash_string' => '{hashin[8+1:2]^ghr[8-1:0]}// cf2',
                       'bht_addr_lo' => '2',
                       'bht_size' => 512,
                       'bht_ghr_size' => 8
                     },
            'nmi_vec' => '0x11110000',
            'even_odd_trigger_chains' => 'true',
            'max_mmode_perf_event' => '516',
            'dccm' => {
                        'dccm_fdata_width' => 39,
                        'dccm_sadr' => '0xf0040000',
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_rows' => '4096',
                        'dccm_num_banks_4' => '',
                        'lsu_sb_bits' => 16,
                        'dccm_size_64' => '',
                        'dccm_bits' => 16,
                        'dccm_byte_width' => '4',
                        'dccm_ecc_width' => 7,
                        'dccm_offset' => '0x40000',
                        'dccm_index_bits' => 12,
                        'dccm_enable' => '1',
                        'dccm_data_cell' => 'ram_4096x39',
                        'dccm_region' => '0xf',
                        'dccm_num_banks' => '4',
                        'dccm_width_bits' => 2,
                        'dccm_bank_bits' => 2,
                        'dccm_size' => 64,
                        'dccm_data_width' => 32,
                        'dccm_reserved' => '0x1400'
                      },
            'reset_vec' => '0x80000000',
            'regwidth' => '32',
            'numiregs' => '32',
            'testbench' => {
                             'build_axi4' => 1,
                             'TOP' => 'tb_top',
                             'clock_period' => '100',
                             'build_axi_native' => 1,
                             'sterr_rollback' => '0',
                             'RV_TOP' => '`TOP.rvtop',
                             'ext_datawidth' => '64',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'ext_addrwidth' => '32',
                             'lderr_rollback' => '1',
                             'assert_on' => '',
                             'SDVT_AHB' => '1'
                           },
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
                            }
                          ],
            'xlen' => 32,
            'icache' => {
                          'icache_num_lines_way' => '128',
                          'icache_ln_sz' => 64,
                          'icache_num_beats' => 8,
                          'icache_data_width' => 64,
                          'icache_tag_index_lo' => 6,
                          'icache_data_depth' => '512',
                          'icache_2banks' => '1',
                          'icache_ecc' => '1',
                          'icache_bank_bits' => 1,
                          'icache_enable' => 1,
                          'icache_index_hi' => 12,
                          'icache_scnd_last' => 6,
                          'icache_num_lines' => 256,
                          'icache_fdata_width' => 71,
                          'icache_data_index_lo' => 4,
                          'icache_size' => 16,
                          'icache_data_cell' => 'ram_512x71',
                          'icache_tag_lo' => 13,
                          'icache_bank_width' => 8,
                          'icache_num_lines_bank' => 64,
                          'icache_bank_hi' => 3,
                          'icache_banks_way' => 2,
                          'icache_beat_addr_hi' => 5,
                          'icache_bank_lo' => 3,
                          'icache_status_bits' => 1,
                          'icache_beat_bits' => 3,
                          'icache_tag_depth' => 128,
                          'icache_tag_cell' => 'ram_128x25',
                          'icache_num_ways' => 2
                        },
            'protection' => {
                              'inst_access_mask5' => '0xffffffff',
                              'inst_access_addr1' => '0xc0000000',
                              'data_access_addr3' => '0x80000000',
                              'data_access_mask0' => '0x7fffffff',
                              'inst_access_mask6' => '0xffffffff',
                              'data_access_enable5' => '0x0',
                              'data_access_enable6' => '0x0',
                              'inst_access_addr6' => '0x00000000',
                              'data_access_addr7' => '0x00000000',
                              'data_access_enable4' => '0x0',
                              'inst_access_enable0' => '1',
                              'data_access_mask3' => '0x0fffffff',
                              'data_access_mask7' => '0xffffffff',
                              'data_access_addr6' => '0x00000000',
                              'data_access_mask4' => '0xffffffff',
                              'inst_access_mask3' => '0x0fffffff',
                              'inst_access_addr4' => '0x00000000',
                              'inst_access_enable4' => '0x0',
                              'inst_access_mask1' => '0x3fffffff',
                              'data_access_enable1' => '1',
                              'inst_access_addr7' => '0x00000000',
                              'inst_access_enable6' => '0x0',
                              'data_access_enable7' => '0x0',
                              'data_access_mask5' => '0xffffffff',
                              'data_access_addr5' => '0x00000000',
                              'inst_access_mask4' => '0xffffffff',
                              'inst_access_mask0' => '0x7fffffff',
                              'data_access_mask2' => '0x1fffffff',
                              'data_access_enable0' => '1',
                              'inst_access_enable2' => '1',
                              'data_access_addr4' => '0x00000000',
                              'inst_access_enable1' => '1',
                              'inst_access_enable3' => '1',
                              'data_access_mask6' => '0xffffffff',
                              'data_access_addr1' => '0xc0000000',
                              'inst_access_addr5' => '0x00000000',
                              'inst_access_addr0' => '0x0',
                              'inst_access_addr3' => '0x80000000',
                              'data_access_enable3' => '1',
                              'data_access_mask1' => '0x3fffffff',
                              'inst_access_enable5' => '0x0',
                              'inst_access_addr2' => '0xa0000000',
                              'data_access_addr0' => '0x0',
                              'inst_access_mask7' => '0xffffffff',
                              'inst_access_mask2' => '0x1fffffff',
                              'data_access_enable2' => '1',
                              'inst_access_enable7' => '0x0',
                              'data_access_addr2' => '0xa0000000'
                            },
            'iccm' => {
                        'iccm_eadr' => '0xee00ffff',
                        'iccm_region' => '0xe',
                        'iccm_size_64' => '',
                        'iccm_sadr' => '0xee000000',
                        'iccm_num_banks' => '4',
                        'iccm_bank_index_lo' => 4,
                        'iccm_rows' => '4096',
                        'iccm_bank_hi' => 3,
                        'iccm_data_cell' => 'ram_4096x39',
                        'iccm_offset' => '0xe000000',
                        'iccm_enable' => 1,
                        'iccm_index_bits' => 12,
                        'iccm_bank_bits' => 2,
                        'iccm_bits' => 16,
                        'iccm_reserved' => '0x1000',
                        'iccm_size' => 64,
                        'iccm_num_banks_4' => ''
                      },
            'core' => {
                        'lsu2dma' => 0,
                        'lsu_num_nbload' => '4',
                        'no_iccm_no_icache' => 'derived',
                        'iccm_icache' => 1,
                        'lsu_stbuf_depth' => '4',
                        'fast_interrupt_redirect' => '1',
                        'timer_legal_en' => '1',
                        'icache_only' => 'derived',
                        'dma_buf_depth' => '5',
                        'lsu_num_nbload_width' => '2',
                        'iccm_only' => 'derived',
                        'fpga_optimize' => '0'
                      },
            'harts' => 1,
            'config_key' => '32\'hdeadbeef'
          );
1;