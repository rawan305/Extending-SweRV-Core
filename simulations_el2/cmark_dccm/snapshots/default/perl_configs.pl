#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by nimrodb on Mon Aug 10 21:55:10 IDT 2020
# 
#  cmd:    swerv -target=default 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
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
            'btb' => {
                       'btb_size' => 512,
                       'btb_btag_size' => 5,
                       'btb_index2_hi' => 17,
                       'btb_index3_lo' => 18,
                       'btb_fold2_index_hash' => 0,
                       'btb_index1_hi' => 9,
                       'btb_index2_lo' => 10,
                       'btb_array_depth' => 256,
                       'btb_index1_lo' => '2',
                       'btb_btag_fold' => 0,
                       'btb_addr_lo' => '2',
                       'btb_index3_hi' => 25,
                       'btb_addr_hi' => 9
                     },
            'even_odd_trigger_chains' => 'true',
            'protection' => {
                              'inst_access_addr2' => '0xa0000000',
                              'data_access_enable5' => '0x0',
                              'inst_access_mask1' => '0x3fffffff',
                              'inst_access_mask5' => '0xffffffff',
                              'data_access_mask5' => '0xffffffff',
                              'data_access_mask1' => '0x3fffffff',
                              'inst_access_enable0' => '1',
                              'inst_access_enable5' => '0x0',
                              'inst_access_addr5' => '0x00000000',
                              'inst_access_mask2' => '0x1fffffff',
                              'data_access_enable7' => '0x0',
                              'inst_access_mask0' => '0x7fffffff',
                              'data_access_mask3' => '0x0fffffff',
                              'inst_access_addr1' => '0xc0000000',
                              'data_access_addr1' => '0xc0000000',
                              'inst_access_enable3' => '1',
                              'inst_access_addr3' => '0x80000000',
                              'inst_access_enable2' => '1',
                              'inst_access_addr7' => '0x00000000',
                              'inst_access_enable4' => '0x0',
                              'inst_access_mask3' => '0x0fffffff',
                              'data_access_addr4' => '0x00000000',
                              'data_access_enable3' => '1',
                              'data_access_enable4' => '0x0',
                              'inst_access_mask4' => '0xffffffff',
                              'data_access_enable1' => '1',
                              'inst_access_addr0' => '0x0',
                              'data_access_mask2' => '0x1fffffff',
                              'inst_access_mask6' => '0xffffffff',
                              'inst_access_enable1' => '1',
                              'data_access_enable0' => '1',
                              'inst_access_enable6' => '0x0',
                              'data_access_addr3' => '0x80000000',
                              'data_access_mask0' => '0x7fffffff',
                              'inst_access_mask7' => '0xffffffff',
                              'data_access_enable6' => '0x0',
                              'data_access_mask6' => '0xffffffff',
                              'inst_access_addr6' => '0x00000000',
                              'data_access_addr5' => '0x00000000',
                              'data_access_addr0' => '0x0',
                              'inst_access_enable7' => '0x0',
                              'data_access_mask4' => '0xffffffff',
                              'inst_access_addr4' => '0x00000000',
                              'data_access_enable2' => '1',
                              'data_access_addr6' => '0x00000000',
                              'data_access_addr2' => '0xa0000000',
                              'data_access_mask7' => '0xffffffff',
                              'data_access_addr7' => '0x00000000'
                            },
            'harts' => 1,
            'max_mmode_perf_event' => '516',
            'tec_rv_icg' => 'clockhdr',
            'icache' => {
                          'icache_data_depth' => '512',
                          'icache_num_beats' => 8,
                          'icache_tag_cell' => 'ram_128x25',
                          'icache_scnd_last' => 6,
                          'icache_num_ways' => 2,
                          'icache_banks_way' => 2,
                          'icache_tag_depth' => 128,
                          'icache_ln_sz' => 64,
                          'icache_data_index_lo' => 4,
                          'icache_enable' => 1,
                          'icache_beat_addr_hi' => 5,
                          'icache_tag_lo' => 13,
                          'icache_beat_bits' => 3,
                          'icache_bank_width' => 8,
                          'icache_data_cell' => 'ram_512x71',
                          'icache_bank_lo' => 3,
                          'icache_tag_index_lo' => 6,
                          'icache_bank_bits' => 1,
                          'icache_index_hi' => 12,
                          'icache_bank_hi' => 3,
                          'icache_2banks' => '1',
                          'icache_num_lines_bank' => 64,
                          'icache_num_lines' => 256,
                          'icache_size' => 16,
                          'icache_data_width' => 64,
                          'icache_status_bits' => 1,
                          'icache_fdata_width' => 71,
                          'icache_num_lines_way' => '128',
                          'icache_ecc' => '1'
                        },
            'regwidth' => '32',
            'physical' => '1',
            'dccm' => {
                        'dccm_data_cell' => 'ram_4096x39',
                        'dccm_region' => '0xf',
                        'dccm_fdata_width' => 39,
                        'dccm_ecc_width' => 7,
                        'dccm_num_banks_4' => '',
                        'dccm_index_bits' => 12,
                        'lsu_sb_bits' => 16,
                        'dccm_byte_width' => '4',
                        'dccm_width_bits' => 2,
                        'dccm_rows' => '4096',
                        'dccm_num_banks' => '4',
                        'dccm_data_width' => 32,
                        'dccm_enable' => '1',
                        'dccm_bank_bits' => 2,
                        'dccm_sadr' => '0xf0040000',
                        'dccm_reserved' => '0x1400',
                        'dccm_size' => 64,
                        'dccm_bits' => 16,
                        'dccm_offset' => '0x40000',
                        'dccm_size_64' => '',
                        'dccm_eadr' => '0xf004ffff'
                      },
            'testbench' => {
                             'TOP' => 'tb_top',
                             'clock_period' => '100',
                             'build_axi_native' => 1,
                             'build_axi4' => 1,
                             'assert_on' => '',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'SDVT_AHB' => '1',
                             'ext_datawidth' => '64',
                             'sterr_rollback' => '0',
                             'RV_TOP' => '`TOP.rvtop',
                             'lderr_rollback' => '1',
                             'ext_addrwidth' => '32'
                           },
            'core' => {
                        'fpga_optimize' => '0',
                        'lsu2dma' => 0,
                        'timer_legal_en' => '1',
                        'icache_only' => 'derived',
                        'lsu_num_nbload_width' => '2',
                        'fast_interrupt_redirect' => '1',
                        'iccm_icache' => 1,
                        'no_iccm_no_icache' => 'derived',
                        'dma_buf_depth' => '5',
                        'iccm_only' => 'derived',
                        'lsu_stbuf_depth' => '4',
                        'lsu_num_nbload' => '4'
                      },
            'csr' => {
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'mpmc' => {
                                   'exists' => 'true',
                                   'number' => '0x7c6',
                                   'reset' => '0x2',
                                   'mask' => '0x2'
                                 },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'mitcnt0' => {
                                      'mask' => '0xffffffff',
                                      'reset' => '0x0',
                                      'exists' => 'true',
                                      'number' => '0x7d2'
                                    },
                       'mitcnt1' => {
                                      'mask' => '0xffffffff',
                                      'reset' => '0x0',
                                      'exists' => 'true',
                                      'number' => '0x7d5'
                                    },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'mfdc' => {
                                   'mask' => '0x00070fff',
                                   'reset' => '0x00070040',
                                   'number' => '0x7f9',
                                   'exists' => 'true'
                                 },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'mhpmevent6' => {
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
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'dicad0' => {
                                     'mask' => '0xffffffff',
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'debug' => 'true',
                                     'number' => '0x7c9',
                                     'comment' => 'Cache diagnostics.'
                                   },
                       'micect' => {
                                     'number' => '0x7f0',
                                     'exists' => 'true',
                                     'mask' => '0xffffffff',
                                     'reset' => '0x0'
                                   },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'mhpmcounter6' => {
                                           'exists' => 'true',
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff'
                                         },
                       'dicago' => {
                                     'number' => '0x7cb',
                                     'comment' => 'Cache diagnostics.',
                                     'exists' => 'true',
                                     'debug' => 'true',
                                     'reset' => '0x0',
                                     'mask' => '0x0'
                                   },
                       'mitbnd0' => {
                                      'mask' => '0xffffffff',
                                      'reset' => '0xffffffff',
                                      'exists' => 'true',
                                      'number' => '0x7d3'
                                    },
                       'mhpmevent3' => {
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0',
                                         'exists' => 'true'
                                       },
                       'meicurpl' => {
                                       'mask' => '0xf',
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'number' => '0xbcc',
                                       'comment' => 'External interrupt current priority level.'
                                     },
                       'mhpmevent4' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'dcsr' => {
                                   'debug' => 'true',
                                   'exists' => 'true',
                                   'poke_mask' => '0x00008dcc',
                                   'reset' => '0x40000003',
                                   'mask' => '0x00008c04'
                                 },
                       'mitctl0' => {
                                      'mask' => '0x00000007',
                                      'reset' => '0x1',
                                      'number' => '0x7d4',
                                      'exists' => 'true'
                                    },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'mhpmevent5' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'mhpmcounter3h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'mhpmcounter5h' => {
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0',
                                            'exists' => 'true'
                                          },
                       'meipt' => {
                                    'mask' => '0xf',
                                    'reset' => '0x0',
                                    'exists' => 'true',
                                    'number' => '0xbc9',
                                    'comment' => 'External interrupt priority threshold.'
                                  },
                       'mcgc' => {
                                   'poke_mask' => '0x000001ff',
                                   'reset' => '0x0',
                                   'mask' => '0x000001ff',
                                   'number' => '0x7f8',
                                   'exists' => 'true'
                                 },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter3' => {
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0',
                                           'exists' => 'true'
                                         },
                       'mstatus' => {
                                      'exists' => 'true',
                                      'reset' => '0x1800',
                                      'mask' => '0x88'
                                    },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'mhartid' => {
                                      'exists' => 'true',
                                      'reset' => '0x0',
                                      'poke_mask' => '0xfffffff0',
                                      'mask' => '0x0'
                                    },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'mrac' => {
                                   'exists' => 'true',
                                   'comment' => 'Memory region io and cache control.',
                                   'shared' => 'true',
                                   'number' => '0x7c0',
                                   'reset' => '0x0',
                                   'mask' => '0xffffffff'
                                 },
                       'mimpid' => {
                                     'reset' => '0x2',
                                     'mask' => '0x0',
                                     'exists' => 'true'
                                   },
                       'mie' => {
                                  'exists' => 'true',
                                  'reset' => '0x0',
                                  'mask' => '0x70000888'
                                },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'meicidpl' => {
                                       'reset' => '0x0',
                                       'mask' => '0xf',
                                       'number' => '0xbcb',
                                       'comment' => 'External interrupt claim id priority level.',
                                       'exists' => 'true'
                                     },
                       'misa' => {
                                   'reset' => '0x40001104',
                                   'mask' => '0x0',
                                   'exists' => 'true'
                                 },
                       'mscause' => {
                                      'reset' => '0x0',
                                      'mask' => '0x0000000f',
                                      'number' => '0x7ff',
                                      'exists' => 'true'
                                    },
                       'mdccmect' => {
                                       'number' => '0x7f2',
                                       'exists' => 'true',
                                       'mask' => '0xffffffff',
                                       'reset' => '0x0'
                                     },
                       'mcpc' => {
                                   'reset' => '0x0',
                                   'mask' => '0x0',
                                   'number' => '0x7c2',
                                   'comment' => 'Core pause',
                                   'exists' => 'true'
                                 },
                       'marchid' => {
                                      'reset' => '0x00000010',
                                      'mask' => '0x0',
                                      'exists' => 'true'
                                    },
                       'mip' => {
                                  'reset' => '0x0',
                                  'poke_mask' => '0x70000888',
                                  'mask' => '0x0',
                                  'exists' => 'true'
                                },
                       'mhpmcounter4h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'mitctl1' => {
                                      'mask' => '0x0000000f',
                                      'reset' => '0x1',
                                      'exists' => 'true',
                                      'number' => '0x7d7'
                                    },
                       'mhpmcounter5' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'mcountinhibit' => {
                                            'mask' => '0x7d',
                                            'poke_mask' => '0x7d',
                                            'reset' => '0x0',
                                            'commnet' => 'Performance counter inhibit. One bit per counter.',
                                            'exists' => 'true'
                                          },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'tselect' => {
                                      'reset' => '0x0',
                                      'mask' => '0x3',
                                      'exists' => 'true'
                                    },
                       'dicad1' => {
                                     'comment' => 'Cache diagnostics.',
                                     'number' => '0x7ca',
                                     'exists' => 'true',
                                     'debug' => 'true',
                                     'reset' => '0x0',
                                     'mask' => '0x3'
                                   },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter6h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'dmst' => {
                                   'exists' => 'true',
                                   'debug' => 'true',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'number' => '0x7c4',
                                   'reset' => '0x0',
                                   'mask' => '0x0'
                                 },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'mitbnd1' => {
                                      'number' => '0x7d6',
                                      'exists' => 'true',
                                      'mask' => '0xffffffff',
                                      'reset' => '0xffffffff'
                                    },
                       'dicawics' => {
                                       'number' => '0x7c8',
                                       'comment' => 'Cache diagnostics.',
                                       'exists' => 'true',
                                       'debug' => 'true',
                                       'mask' => '0x0130fffc',
                                       'reset' => '0x0'
                                     },
                       'mvendorid' => {
                                        'exists' => 'true',
                                        'reset' => '0x45',
                                        'mask' => '0x0'
                                      },
                       'mhpmcounter4' => {
                                           'exists' => 'true',
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff'
                                         },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     }
                     },
            'target' => 'default',
            'reset_vec' => '0x80000000',
            'memmap' => {
                          'external_data_1' => '0x00000000',
                          'unused_region0' => '0x00000000',
                          'unused_region5' => '0x50000000',
                          'serialio' => '0xd0580000',
                          'debug_sb_mem' => '0xb0580000',
                          'unused_region2' => '0x20000000',
                          'unused_region4' => '0x40000000',
                          'unused_region6' => '0x60000000',
                          'external_mem_hole' => '0x90000000',
                          'unused_region1' => '0x10000000',
                          'unused_region3' => '0x30000000',
                          'unused_region7' => '0x70000000',
                          'external_prog' => '0xb0000000',
                          'external_data' => '0xc0580000'
                        },
            'iccm' => {
                        'iccm_eadr' => '0xee00ffff',
                        'iccm_bank_bits' => 2,
                        'iccm_offset' => '0xe000000',
                        'iccm_region' => '0xe',
                        'iccm_bits' => 16,
                        'iccm_enable' => 1,
                        'iccm_reserved' => '0x1000',
                        'iccm_bank_index_lo' => 4,
                        'iccm_num_banks_4' => '',
                        'iccm_data_cell' => 'ram_4096x39',
                        'iccm_num_banks' => '4',
                        'iccm_sadr' => '0xee000000',
                        'iccm_size' => 64,
                        'iccm_index_bits' => 12,
                        'iccm_bank_hi' => 3,
                        'iccm_rows' => '4096',
                        'iccm_size_64' => ''
                      },
            'retstack' => {
                            'ret_stack_size' => '8'
                          },
            'config_key' => '32\'hdeadbeef',
            'numiregs' => '32',
            'bus' => {
                       'lsu_bus_tag' => 3,
                       'dma_bus_id' => '1',
                       'sb_bus_id' => '1',
                       'dma_bus_tag' => 1,
                       'ifu_bus_id' => '1',
                       'dma_bus_prty' => '2',
                       'sb_bus_prty' => '2',
                       'ifu_bus_prty' => '2',
                       'sb_bus_tag' => 1,
                       'lsu_bus_prty' => '2',
                       'lsu_bus_id' => '1',
                       'bus_prty_default' => '3',
                       'ifu_bus_tag' => '3'
                     },
            'nmi_vec' => '0x11110000',
            'pic' => {
                       'pic_meip_offset' => '0x1000',
                       'pic_meip_mask' => '0x0',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_bits' => 15,
                       'pic_size' => 32,
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meie_mask' => '0x1',
                       'pic_meigwctrl_mask' => '0x3',
                       'pic_total_int_plus1' => 32,
                       'pic_meipl_count' => 31,
                       'pic_meipt_mask' => '0x0',
                       'pic_meigwclr_count' => 31,
                       'pic_meigwctrl_count' => 31,
                       'pic_meipl_offset' => '0x0000',
                       'pic_meipt_offset' => '0x3004',
                       'pic_meie_count' => 31,
                       'pic_meipl_mask' => '0xf',
                       'pic_meipt_count' => 31,
                       'pic_meigwclr_mask' => '0x0',
                       'pic_int_words' => 1,
                       'pic_base_addr' => '0xf00c0000',
                       'pic_offset' => '0xc0000',
                       'pic_mpiccfg_mask' => '0x1',
                       'pic_meip_count' => 4,
                       'pic_mpiccfg_count' => 1,
                       'pic_region' => '0xf',
                       'pic_meie_offset' => '0x2000',
                       'pic_total_int' => 31
                     },
            'xlen' => 32,
            'bht' => {
                       'bht_ghr_hash_1' => '',
                       'bht_size' => 512,
                       'bht_ghr_range' => '7:0',
                       'bht_array_depth' => 256,
                       'bht_addr_hi' => 9,
                       'bht_addr_lo' => '2',
                       'bht_hash_string' => '{hashin[8+1:2]^ghr[8-1:0]}// cf2',
                       'bht_ghr_size' => 8
                     },
            'num_mmode_perf_regs' => '4'
          );
1;
