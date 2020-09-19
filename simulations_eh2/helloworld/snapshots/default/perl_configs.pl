#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by nimrodb on Sat Sep 19 23:07:32 IDT 2020
# 
#  cmd:    swerv -target=default 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'harts' => 1,
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'nmi_vec' => '0x11110000',
            'icache' => {
                          'icache_ln_sz' => 64,
                          'icache_beat_addr_hi' => 5,
                          'icache_num_ways' => 4,
                          'icache_bank_hi' => 3,
                          'icache_tag_depth' => 128,
                          'icache_beat_bits' => 3,
                          'icache_tag_lo' => 13,
                          'icache_data_depth' => '512',
                          'icache_ecc' => '1',
                          'icache_enable' => 1,
                          'icache_tag_cell' => 'ram_128x25',
                          'icache_data_width' => 64,
                          'icache_bank_bits' => 1,
                          'icache_fdata_width' => 71,
                          'icache_data_index_lo' => 4,
                          'icache_num_lines' => 512,
                          'icache_num_beats' => 8,
                          'icache_num_lines_bank' => 64,
                          'icache_index_hi' => 12,
                          'icache_scnd_last' => 6,
                          'icache_status_bits' => 3,
                          'icache_bank_width' => 8,
                          'icache_size' => 32,
                          'icache_tag_index_lo' => 6,
                          'icache_data_cell' => 'ram_512x71',
                          'icache_banks_way' => 2,
                          'icache_num_lines_way' => '128',
                          'icache_bank_lo' => 3,
                          'icache_2banks' => '1'
                        },
            'numiregs' => '32',
            'reset_vec' => '0x80000000',
            'regwidth' => '32',
            'config_key' => '32\'hdeadbeef',
            'pic' => {
                       'pic_offset' => '0xc0000',
                       'pic_meigwclr_count' => 127,
                       'pic_meie_mask' => '0x1',
                       'pic_meipl_offset' => '0x0000',
                       'pic_meigwclr_mask' => '0x0',
                       'pic_meipl_mask' => '0xf',
                       'pic_meip_mask' => '0x0',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_meigwctrl_count' => 127,
                       'pic_meidels_count' => 127,
                       'pic_meie_offset' => '0x2000',
                       'pic_bits' => 15,
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_meitp_mask' => '0x0',
                       'pic_meip_count' => 4,
                       'pic_meie_count' => 127,
                       'pic_meipl_count' => 127,
                       'pic_total_int' => 127,
                       'pic_mpiccfg_mask' => '0x1',
                       'pic_meigwctrl_mask' => '0x3',
                       'pic_base_addr' => '0xf00c0000',
                       'pic_mpiccfg_count' => 1,
                       'pic_meipt_mask' => '0x0',
                       'pic_meipt_offset' => '0x3004',
                       'pic_size' => 32,
                       'pic_int_words' => 4,
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meip_offset' => '0x1000',
                       'pic_meipt_count' => 127,
                       'pic_region' => '0xf',
                       'pic_2cycle' => '1',
                       'pic_meitp_count' => 127,
                       'pic_total_int_plus1' => 128,
                       'pic_meidels_mask' => '0x1',
                       'pic_meitp_offset' => '0x1800'
                     },
            'physical' => '1',
            'xlen' => 32,
            'btb' => {
                       'btb_addr_lo' => '3',
                       'btb_index3_lo' => 17,
                       'btb_size' => 512,
                       'btb_btag_size' => 5,
                       'btb_index2_lo' => 10,
                       'btb_index1_lo' => '3',
                       'btb_index3_hi' => 23,
                       'btb_array_depth' => 128,
                       'btb_index2_hi' => 16,
                       'btb_addr_hi' => 9,
                       'btb_btag_fold' => 0,
                       'btb_index1_hi' => 9,
                       'btb_fold2_index_hash' => 0
                     },
            'iccm' => {
                        'iccm_data_cell' => 'ram_4096x39',
                        'iccm_offset' => '0xe000000',
                        'iccm_size_64' => '',
                        'iccm_bank_bits' => 2,
                        'iccm_reserved' => '0x1000',
                        'iccm_size' => 64,
                        'iccm_num_banks_4' => '',
                        'iccm_enable' => 1,
                        'iccm_bits' => 16,
                        'iccm_bank_hi' => 3,
                        'iccm_sadr' => '0xee000000',
                        'iccm_rows' => '4096',
                        'iccm_region' => '0xe',
                        'iccm_index_bits' => 12,
                        'iccm_bank_index_lo' => 4,
                        'iccm_eadr' => '0xee00ffff',
                        'iccm_num_banks' => '4'
                      },
            'tec_rv_icg' => 'clockhdr',
            'protection' => {
                              'inst_access_addr1' => '0xc0000000',
                              'inst_access_addr0' => '0x0',
                              'data_access_addr1' => '0xc0000000',
                              'data_access_addr4' => '0x00000000',
                              'inst_access_enable1' => '1',
                              'data_access_mask1' => '0x3fffffff',
                              'inst_access_mask2' => '0x1fffffff',
                              'data_access_enable7' => '0x0',
                              'data_access_addr3' => '0x80000000',
                              'data_access_enable0' => '1',
                              'data_access_mask4' => '0xffffffff',
                              'inst_access_addr2' => '0xa0000000',
                              'inst_access_mask7' => '0xffffffff',
                              'inst_access_enable3' => '1',
                              'data_access_addr2' => '0xa0000000',
                              'data_access_mask7' => '0xffffffff',
                              'inst_access_addr4' => '0x00000000',
                              'data_access_mask3' => '0x0fffffff',
                              'inst_access_mask6' => '0xffffffff',
                              'data_access_addr0' => '0x0',
                              'data_access_addr6' => '0x00000000',
                              'inst_access_addr5' => '0x00000000',
                              'data_access_enable5' => '0x0',
                              'inst_access_enable7' => '0x0',
                              'data_access_enable6' => '0x0',
                              'data_access_mask2' => '0x1fffffff',
                              'inst_access_mask3' => '0x0fffffff',
                              'inst_access_mask4' => '0xffffffff',
                              'data_access_mask5' => '0xffffffff',
                              'inst_access_enable5' => '0x0',
                              'inst_access_mask5' => '0xffffffff',
                              'inst_access_mask1' => '0x3fffffff',
                              'data_access_enable1' => '1',
                              'inst_access_addr3' => '0x80000000',
                              'inst_access_enable4' => '0x0',
                              'data_access_enable2' => '1',
                              'inst_access_enable2' => '1',
                              'inst_access_addr6' => '0x00000000',
                              'data_access_enable3' => '1',
                              'data_access_addr5' => '0x00000000',
                              'data_access_mask6' => '0xffffffff',
                              'data_access_mask0' => '0x7fffffff',
                              'data_access_addr7' => '0x00000000',
                              'inst_access_addr7' => '0x00000000',
                              'inst_access_mask0' => '0x7fffffff',
                              'inst_access_enable6' => '0x0',
                              'inst_access_enable0' => '1',
                              'data_access_enable4' => '0x0'
                            },
            'num_mmode_perf_regs' => '4',
            'core' => {
                        'iccm_icache' => 1,
                        'no_iccm_no_icache' => 'derived',
                        'fast_interrupt_redirect' => '1',
                        'num_threads' => 1,
                        'lsu_num_nbload' => '8',
                        'lsu_num_nbload_width' => '3',
                        'timer_legal_en' => '1',
                        'iccm_only' => 'derived',
                        'dma_buf_depth' => '5',
                        'icache_only' => 'derived',
                        'lsu_stbuf_depth' => '10',
                        'fpga_optimize' => '0'
                      },
            'memmap' => {
                          'external_data_1' => '0x00000000',
                          'unused_region2' => '0x20000000',
                          'unused_region0' => '0x00000000',
                          'unused_region3' => '0x30000000',
                          'unused_region1' => '0x10000000',
                          'external_prog' => '0xb0000000',
                          'unused_region7' => '0x70000000',
                          'unused_region6' => '0x60000000',
                          'serialio' => '0xd0580000',
                          'unused_region4' => '0x40000000',
                          'external_mem_hole' => '0x90000000',
                          'unused_region5' => '0x50000000',
                          'debug_sb_mem' => '0xb0580000',
                          'external_data' => '0xc0580000'
                        },
            'bus' => {
                       'lsu_bus_tag' => '4',
                       'bus_prty_default' => '3',
                       'ifu_bus_prty' => 2,
                       'dma_bus_id' => 1,
                       'sb_bus_prty' => '2',
                       'dma_bus_tag' => 1,
                       'lsu_bus_prty' => '2',
                       'dma_bus_prty' => '2',
                       'lsu_bus_id' => 1,
                       'ifu_bus_tag' => '4',
                       'sb_bus_id' => 1,
                       'ifu_bus_id' => 1,
                       'sb_bus_tag' => 1
                     },
            'bht' => {
                       'bht_ghr_size' => 7,
                       'bht_ghr_hash_1' => '',
                       'bht_ghr_pad' => 'fghr[2:0],3\'b0',
                       'bht_array_depth' => 128,
                       'bht_ghr_pad2' => 'fghr[3:0],2\'b0',
                       'bht_addr_hi' => 9,
                       'bht_hash_string' => '{hashin[7+2:5]^ghr[7-1:2], ghr[1:0]}// cf2',
                       'bht_addr_lo' => '3',
                       'bht_ghr_range' => '6:0',
                       'bht_size' => 512
                     },
            'even_odd_trigger_chains' => 'true',
            'testbench' => {
                             'TOP' => 'tb_top',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'datawidth' => '64',
                             'assert_on' => '',
                             'clock_period' => '100',
                             'ext_datawidth' => '64',
                             'SDVT_AHB' => '1',
                             'RV_TOP' => '`TOP.rvtop',
                             'build_axi4' => 1,
                             'ext_addrwidth' => '32',
                             'sterr_rollback' => '0',
                             'build_axi_native' => 1,
                             'lderr_rollback' => '1'
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
                            }
                          ],
            'target' => 'default',
            'dccm' => {
                        'dccm_offset' => '0x40000',
                        'dccm_size_64' => '',
                        'dccm_reserved' => '0x1400',
                        'dccm_num_banks_8' => '',
                        'dccm_fdata_width' => 39,
                        'dccm_num_banks' => '8',
                        'dccm_size' => 64,
                        'dccm_rows' => '2048',
                        'lsu_sb_bits' => 16,
                        'dccm_index_bits' => 11,
                        'dccm_sadr' => '0xf0040000',
                        'dccm_ecc_width' => 7,
                        'dccm_width_bits' => 2,
                        'dccm_byte_width' => '4',
                        'dccm_data_width' => 32,
                        'dccm_region' => '0xf',
                        'dccm_enable' => '1',
                        'dccm_bank_bits' => 3,
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_bits' => 16,
                        'dccm_data_cell' => 'ram_2048x39'
                      },
            'csr' => {
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'mhpmevent5' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'mie' => {
                                  'reset' => '0x0',
                                  'exists' => 'true',
                                  'mask' => '0x70000888'
                                },
                       'dicad1' => {
                                     'reset' => '0x0',
                                     'mask' => '0x3',
                                     'exists' => 'true',
                                     'number' => '0x7ca',
                                     'comment' => 'Cache diagnostics.',
                                     'debug' => 'true'
                                   },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'mhpmevent6' => {
                                         'reset' => '0x0',
                                         'exists' => 'true',
                                         'mask' => '0xffffffff'
                                       },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter4' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'miccmect' => {
                                       'number' => '0x7f1',
                                       'exists' => 'true',
                                       'mask' => '0xffffffff',
                                       'reset' => '0x0'
                                     },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'mcpc' => {
                                   'reset' => '0x0',
                                   'mask' => '0x0',
                                   'exists' => 'true',
                                   'number' => '0x7c2',
                                   'comment' => 'Core pause'
                                 },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'meicurpl' => {
                                       'comment' => 'External interrupt current priority level.',
                                       'exists' => 'true',
                                       'mask' => '0xf',
                                       'number' => '0xbcc',
                                       'reset' => '0x0'
                                     },
                       'mfdht' => {
                                    'exists' => 'true',
                                    'shared' => 'true',
                                    'number' => '0x7ce',
                                    'mask' => '0x0000003f',
                                    'reset' => '0x0',
                                    'comment' => 'Force Debug Halt Threshold'
                                  },
                       'mhpmcounter5' => {
                                           'mask' => '0xffffffff',
                                           'exists' => 'true',
                                           'reset' => '0x0'
                                         },
                       'misa' => {
                                   'reset' => '0x40001105',
                                   'exists' => 'true',
                                   'mask' => '0x0'
                                 },
                       'mhpmcounter4h' => {
                                            'mask' => '0xffffffff',
                                            'exists' => 'true',
                                            'reset' => '0x0'
                                          },
                       'mscause' => {
                                      'reset' => '0x0',
                                      'exists' => 'true',
                                      'mask' => '0x0000000f',
                                      'number' => '0x7ff'
                                    },
                       'mhpmcounter5h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'mrac' => {
                                   'comment' => 'Memory region io and cache control.',
                                   'reset' => '0x0',
                                   'exists' => 'true',
                                   'shared' => 'true',
                                   'number' => '0x7c0',
                                   'mask' => '0xffffffff'
                                 },
                       'mhpmevent3' => {
                                         'mask' => '0xffffffff',
                                         'exists' => 'true',
                                         'reset' => '0x0'
                                       },
                       'mnmipdel' => {
                                       'exists' => 'true',
                                       'shared' => 'true',
                                       'number' => '0x7fe',
                                       'mask' => '0x1',
                                       'reset' => '0x1',
                                       'comment' => 'NMI pin delegation'
                                     },
                       'meipt' => {
                                    'comment' => 'External interrupt priority threshold.',
                                    'reset' => '0x0',
                                    'exists' => 'true',
                                    'mask' => '0xf',
                                    'number' => '0xbc9'
                                  },
                       'mhpmcounter3h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'mhartstart' => {
                                         'comment' => 'Hart start mask',
                                         'exists' => 'true',
                                         'shared' => 'true',
                                         'mask' => '0x0',
                                         'number' => '0x7fc',
                                         'reset' => '0x1'
                                       },
                       'mfdc' => {
                                   'reset' => '0x00070040',
                                   'number' => '0x7f9',
                                   'shared' => 'true',
                                   'exists' => 'true',
                                   'mask' => '0x00070f4d'
                                 },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'mhpmevent4' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter3' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'mstatus' => {
                                      'mask' => '0x88',
                                      'exists' => 'true',
                                      'reset' => '0x1800'
                                    },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'tselect' => {
                                      'reset' => '0x0',
                                      'exists' => 'true',
                                      'mask' => '0x3'
                                    },
                       'mitcnt0' => {
                                      'reset' => '0x0',
                                      'number' => '0x7d2',
                                      'exists' => 'true',
                                      'mask' => '0xffffffff'
                                    },
                       'mcountinhibit' => {
                                            'reset' => '0x0',
                                            'poke_mask' => '0x7d',
                                            'exists' => 'true',
                                            'mask' => '0x7d',
                                            'commnet' => 'Performance counter inhibit. One bit per counter.'
                                          },
                       'mfdhs' => {
                                    'reset' => '0x0',
                                    'number' => '0x7cf',
                                    'exists' => 'true',
                                    'mask' => '0x00000003',
                                    'comment' => 'Force Debug Halt Status'
                                  },
                       'dmst' => {
                                   'debug' => 'true',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'number' => '0x7c4',
                                   'reset' => '0x0'
                                 },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'mcgc' => {
                                   'reset' => '0x0',
                                   'poke_mask' => '0x000001ff',
                                   'shared' => 'true',
                                   'exists' => 'true',
                                   'number' => '0x7f8',
                                   'mask' => '0x000001ff'
                                 },
                       'mitcnt1' => {
                                      'exists' => 'true',
                                      'mask' => '0xffffffff',
                                      'number' => '0x7d5',
                                      'reset' => '0x0'
                                    },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'mip' => {
                                  'reset' => '0x0',
                                  'poke_mask' => '0x70000888',
                                  'mask' => '0x0',
                                  'exists' => 'true'
                                },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'meicidpl' => {
                                       'reset' => '0x0',
                                       'mask' => '0xf',
                                       'exists' => 'true',
                                       'number' => '0xbcb',
                                       'comment' => 'External interrupt claim id priority level.'
                                     },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'dcsr' => {
                                   'reset' => '0x40000003',
                                   'mask' => '0x00008c04',
                                   'exists' => 'true',
                                   'poke_mask' => '0x00008dcc',
                                   'debug' => 'true'
                                 },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter6' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'mvendorid' => {
                                        'reset' => '0x45',
                                        'mask' => '0x0',
                                        'exists' => 'true'
                                      },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'mitbnd1' => {
                                      'exists' => 'true',
                                      'number' => '0x7d6',
                                      'mask' => '0xffffffff',
                                      'reset' => '0xffffffff'
                                    },
                       'mhartid' => {
                                      'reset' => '0x0',
                                      'mask' => '0x0',
                                      'exists' => 'true',
                                      'poke_mask' => '0xfffffff0'
                                    },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter6h' => {
                                            'mask' => '0xffffffff',
                                            'exists' => 'true',
                                            'reset' => '0x0'
                                          },
                       'micect' => {
                                     'reset' => '0x0',
                                     'number' => '0x7f0',
                                     'exists' => 'true',
                                     'mask' => '0xffffffff'
                                   },
                       'mimpid' => {
                                     'exists' => 'true',
                                     'mask' => '0x0',
                                     'reset' => '0x2'
                                   },
                       'mitctl0' => {
                                      'reset' => '0x1',
                                      'mask' => '0x00000007',
                                      'exists' => 'true',
                                      'number' => '0x7d4'
                                    },
                       'dicad0' => {
                                     'debug' => 'true',
                                     'comment' => 'Cache diagnostics.',
                                     'mask' => '0xffffffff',
                                     'exists' => 'true',
                                     'number' => '0x7c9',
                                     'reset' => '0x0'
                                   },
                       'mitbnd0' => {
                                      'reset' => '0xffffffff',
                                      'exists' => 'true',
                                      'mask' => '0xffffffff',
                                      'number' => '0x7d3'
                                    },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'mpmc' => {
                                   'reset' => '0x2',
                                   'mask' => '0x2',
                                   'exists' => 'true',
                                   'number' => '0x7c6'
                                 },
                       'dicago' => {
                                     'reset' => '0x0',
                                     'exists' => 'true',
                                     'mask' => '0x0',
                                     'number' => '0x7cb',
                                     'comment' => 'Cache diagnostics.',
                                     'debug' => 'true'
                                   },
                       'mhartnum' => {
                                       'comment' => 'Hart count',
                                       'shared' => 'true',
                                       'mask' => '0x0',
                                       'exists' => 'true',
                                       'number' => '0xfc4',
                                       'reset' => '0x1'
                                     },
                       'dicawics' => {
                                       'mask' => '0x0130fffc',
                                       'exists' => 'true',
                                       'number' => '0x7c8',
                                       'reset' => '0x0',
                                       'debug' => 'true',
                                       'comment' => 'Cache diagnostics.'
                                     },
                       'mitctl1' => {
                                      'reset' => '0x1',
                                      'exists' => 'true',
                                      'number' => '0x7d7',
                                      'mask' => '0x0000000f'
                                    },
                       'marchid' => {
                                      'reset' => '0x00000011',
                                      'exists' => 'true',
                                      'mask' => '0x0'
                                    },
                       'mdccmect' => {
                                       'reset' => '0x0',
                                       'number' => '0x7f2',
                                       'exists' => 'true',
                                       'mask' => '0xffffffff'
                                     }
                     },
            'max_mmode_perf_event' => '516'
          );
1;
