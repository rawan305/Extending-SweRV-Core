#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by nimrodb on Mon Aug 10 21:54:51 IDT 2020
# 
#  cmd:    swerv -target=default 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'retstack' => {
                            'ret_stack_size' => '8'
                          },
            'pic' => {
                       'pic_meipt_offset' => '0x3004',
                       'pic_meigwclr_mask' => '0x0',
                       'pic_meipt_mask' => '0x0',
                       'pic_meip_count' => 4,
                       'pic_mpiccfg_mask' => '0x1',
                       'pic_bits' => 15,
                       'pic_meie_count' => 31,
                       'pic_meie_offset' => '0x2000',
                       'pic_meipt_count' => 31,
                       'pic_meie_mask' => '0x1',
                       'pic_size' => 32,
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_meigwctrl_mask' => '0x3',
                       'pic_meigwclr_count' => 31,
                       'pic_mpiccfg_count' => 1,
                       'pic_base_addr' => '0xf00c0000',
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meip_offset' => '0x1000',
                       'pic_meipl_count' => 31,
                       'pic_meip_mask' => '0x0',
                       'pic_total_int' => 31,
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_meipl_mask' => '0xf',
                       'pic_meipl_offset' => '0x0000',
                       'pic_offset' => '0xc0000',
                       'pic_int_words' => 1,
                       'pic_meigwctrl_count' => 31,
                       'pic_total_int_plus1' => 32,
                       'pic_region' => '0xf'
                     },
            'bht' => {
                       'bht_size' => 512,
                       'bht_hash_string' => '{hashin[8+1:2]^ghr[8-1:0]}// cf2',
                       'bht_ghr_size' => 8,
                       'bht_array_depth' => 256,
                       'bht_addr_hi' => 9,
                       'bht_ghr_range' => '7:0',
                       'bht_ghr_hash_1' => '',
                       'bht_addr_lo' => '2'
                     },
            'physical' => '1',
            'protection' => {
                              'inst_access_enable3' => '1',
                              'inst_access_mask2' => '0x1fffffff',
                              'data_access_enable5' => '0x0',
                              'data_access_mask0' => '0x7fffffff',
                              'inst_access_mask3' => '0x0fffffff',
                              'inst_access_mask6' => '0xffffffff',
                              'inst_access_addr3' => '0x80000000',
                              'data_access_addr0' => '0x0',
                              'inst_access_mask0' => '0x7fffffff',
                              'data_access_enable3' => '1',
                              'inst_access_enable4' => '0x0',
                              'data_access_enable0' => '1',
                              'data_access_mask2' => '0x1fffffff',
                              'inst_access_enable5' => '0x0',
                              'inst_access_mask1' => '0x3fffffff',
                              'inst_access_addr1' => '0xc0000000',
                              'inst_access_enable2' => '1',
                              'data_access_mask5' => '0xffffffff',
                              'data_access_enable1' => '1',
                              'data_access_mask3' => '0x0fffffff',
                              'data_access_enable6' => '0x0',
                              'data_access_mask1' => '0x3fffffff',
                              'inst_access_addr5' => '0x00000000',
                              'data_access_mask4' => '0xffffffff',
                              'inst_access_addr7' => '0x00000000',
                              'data_access_addr5' => '0x00000000',
                              'data_access_addr7' => '0x00000000',
                              'inst_access_addr6' => '0x00000000',
                              'inst_access_addr0' => '0x0',
                              'data_access_enable4' => '0x0',
                              'inst_access_mask4' => '0xffffffff',
                              'data_access_addr1' => '0xc0000000',
                              'data_access_mask7' => '0xffffffff',
                              'inst_access_enable6' => '0x0',
                              'data_access_enable7' => '0x0',
                              'data_access_enable2' => '1',
                              'inst_access_enable7' => '0x0',
                              'inst_access_enable1' => '1',
                              'data_access_addr2' => '0xa0000000',
                              'data_access_addr4' => '0x00000000',
                              'data_access_addr3' => '0x80000000',
                              'inst_access_mask5' => '0xffffffff',
                              'inst_access_enable0' => '1',
                              'inst_access_addr4' => '0x00000000',
                              'inst_access_mask7' => '0xffffffff',
                              'data_access_mask6' => '0xffffffff',
                              'data_access_addr6' => '0x00000000',
                              'inst_access_addr2' => '0xa0000000'
                            },
            'testbench' => {
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'build_axi4' => 1,
                             'lderr_rollback' => '1',
                             'clock_period' => '100',
                             'TOP' => 'tb_top',
                             'sterr_rollback' => '0',
                             'build_axi_native' => 1,
                             'ext_addrwidth' => '32',
                             'SDVT_AHB' => '1',
                             'ext_datawidth' => '64',
                             'assert_on' => '',
                             'RV_TOP' => '`TOP.rvtop'
                           },
            'iccm' => {
                        'iccm_bits' => 16,
                        'iccm_eadr' => '0xee00ffff',
                        'iccm_reserved' => '0x1000',
                        'iccm_region' => '0xe',
                        'iccm_num_banks' => '4',
                        'iccm_index_bits' => 12,
                        'iccm_bank_hi' => 3,
                        'iccm_data_cell' => 'ram_4096x39',
                        'iccm_size' => 64,
                        'iccm_sadr' => '0xee000000',
                        'iccm_bank_bits' => 2,
                        'iccm_enable' => 1,
                        'iccm_offset' => '0xe000000',
                        'iccm_bank_index_lo' => 4,
                        'iccm_num_banks_4' => '',
                        'iccm_rows' => '4096',
                        'iccm_size_64' => ''
                      },
            'harts' => 1,
            'target' => 'default',
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
            'bus' => {
                       'bus_prty_default' => '3',
                       'lsu_bus_prty' => '2',
                       'lsu_bus_tag' => 3,
                       'sb_bus_id' => '1',
                       'dma_bus_prty' => '2',
                       'dma_bus_id' => '1',
                       'lsu_bus_id' => '1',
                       'dma_bus_tag' => 1,
                       'ifu_bus_id' => '1',
                       'ifu_bus_tag' => '3',
                       'sb_bus_tag' => 1,
                       'sb_bus_prty' => '2',
                       'ifu_bus_prty' => '2'
                     },
            'core' => {
                        'icache_only' => 'derived',
                        'fpga_optimize' => '0',
                        'fast_interrupt_redirect' => '1',
                        'lsu2dma' => 0,
                        'lsu_num_nbload' => '4',
                        'iccm_only' => 'derived',
                        'iccm_icache' => 1,
                        'lsu_num_nbload_width' => '2',
                        'timer_legal_en' => '1',
                        'no_iccm_no_icache' => 'derived',
                        'lsu_stbuf_depth' => '4',
                        'dma_buf_depth' => '5'
                      },
            'regwidth' => '32',
            'num_mmode_perf_regs' => '4',
            'nmi_vec' => '0x11110000',
            'numiregs' => '32',
            'btb' => {
                       'btb_addr_lo' => '2',
                       'btb_index3_hi' => 25,
                       'btb_size' => 512,
                       'btb_addr_hi' => 9,
                       'btb_index3_lo' => 18,
                       'btb_fold2_index_hash' => 0,
                       'btb_btag_fold' => 0,
                       'btb_btag_size' => 5,
                       'btb_index1_hi' => 9,
                       'btb_index1_lo' => '2',
                       'btb_index2_lo' => 10,
                       'btb_index2_hi' => 17,
                       'btb_array_depth' => 256
                     },
            'even_odd_trigger_chains' => 'true',
            'dccm' => {
                        'dccm_offset' => '0x40000',
                        'dccm_region' => '0xf',
                        'dccm_data_cell' => 'ram_4096x39',
                        'dccm_num_banks_4' => '',
                        'dccm_size_64' => '',
                        'dccm_reserved' => '0x1400',
                        'dccm_ecc_width' => 7,
                        'dccm_sadr' => '0xf0040000',
                        'dccm_size' => 64,
                        'dccm_bits' => 16,
                        'dccm_fdata_width' => 39,
                        'dccm_num_banks' => '4',
                        'dccm_bank_bits' => 2,
                        'lsu_sb_bits' => 16,
                        'dccm_rows' => '4096',
                        'dccm_enable' => '1',
                        'dccm_byte_width' => '4',
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_width_bits' => 2,
                        'dccm_data_width' => 32,
                        'dccm_index_bits' => 12
                      },
            'config_key' => '32\'hdeadbeef',
            'xlen' => 32,
            'tec_rv_icg' => 'clockhdr',
            'icache' => {
                          'icache_tag_index_lo' => 6,
                          'icache_beat_addr_hi' => 5,
                          'icache_index_hi' => 12,
                          'icache_fdata_width' => 71,
                          'icache_tag_lo' => 13,
                          'icache_banks_way' => 2,
                          'icache_num_lines' => 256,
                          'icache_num_ways' => 2,
                          'icache_scnd_last' => 6,
                          'icache_status_bits' => 1,
                          'icache_data_cell' => 'ram_512x71',
                          'icache_ln_sz' => 64,
                          'icache_enable' => 1,
                          'icache_tag_depth' => 128,
                          'icache_size' => 16,
                          'icache_beat_bits' => 3,
                          'icache_bank_lo' => 3,
                          'icache_data_depth' => '512',
                          'icache_num_beats' => 8,
                          'icache_bank_hi' => 3,
                          'icache_ecc' => '1',
                          'icache_tag_cell' => 'ram_128x25',
                          'icache_num_lines_bank' => 64,
                          'icache_data_width' => 64,
                          'icache_bank_width' => 8,
                          'icache_bank_bits' => 1,
                          'icache_num_lines_way' => '128',
                          'icache_data_index_lo' => 4,
                          'icache_2banks' => '1'
                        },
            'reset_vec' => '0x80000000',
            'memmap' => {
                          'debug_sb_mem' => '0xb0580000',
                          'external_mem_hole' => '0x90000000',
                          'unused_region0' => '0x00000000',
                          'external_prog' => '0xb0000000',
                          'external_data' => '0xc0580000',
                          'unused_region5' => '0x50000000',
                          'unused_region3' => '0x30000000',
                          'external_data_1' => '0x00000000',
                          'unused_region1' => '0x10000000',
                          'unused_region6' => '0x60000000',
                          'unused_region7' => '0x70000000',
                          'unused_region4' => '0x40000000',
                          'unused_region2' => '0x20000000',
                          'serialio' => '0xd0580000'
                        },
            'csr' => {
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'mdccmect' => {
                                       'exists' => 'true',
                                       'number' => '0x7f2',
                                       'mask' => '0xffffffff',
                                       'reset' => '0x0'
                                     },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'mcpc' => {
                                   'comment' => 'Core pause',
                                   'mask' => '0x0',
                                   'reset' => '0x0',
                                   'number' => '0x7c2',
                                   'exists' => 'true'
                                 },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'mhpmevent4' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'mhpmcounter4' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'mip' => {
                                  'mask' => '0x0',
                                  'reset' => '0x0',
                                  'poke_mask' => '0x70000888',
                                  'exists' => 'true'
                                },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'meicurpl' => {
                                       'comment' => 'External interrupt current priority level.',
                                       'mask' => '0xf',
                                       'number' => '0xbcc',
                                       'reset' => '0x0',
                                       'exists' => 'true'
                                     },
                       'mpmc' => {
                                   'mask' => '0x2',
                                   'number' => '0x7c6',
                                   'reset' => '0x2',
                                   'exists' => 'true'
                                 },
                       'mcgc' => {
                                   'poke_mask' => '0x000001ff',
                                   'exists' => 'true',
                                   'mask' => '0x000001ff',
                                   'number' => '0x7f8',
                                   'reset' => '0x0'
                                 },
                       'mhpmevent5' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'mhpmevent6' => {
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0',
                                         'exists' => 'true'
                                       },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'marchid' => {
                                      'mask' => '0x0',
                                      'reset' => '0x00000010',
                                      'exists' => 'true'
                                    },
                       'mhpmevent3' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'dmst' => {
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'debug' => 'true',
                                   'reset' => '0x0',
                                   'mask' => '0x0',
                                   'number' => '0x7c4',
                                   'exists' => 'true'
                                 },
                       'meicidpl' => {
                                       'number' => '0xbcb',
                                       'mask' => '0xf',
                                       'reset' => '0x0',
                                       'comment' => 'External interrupt claim id priority level.',
                                       'exists' => 'true'
                                     },
                       'mitctl0' => {
                                      'exists' => 'true',
                                      'reset' => '0x1',
                                      'mask' => '0x00000007',
                                      'number' => '0x7d4'
                                    },
                       'mimpid' => {
                                     'mask' => '0x0',
                                     'reset' => '0x2',
                                     'exists' => 'true'
                                   },
                       'mscause' => {
                                      'exists' => 'true',
                                      'number' => '0x7ff',
                                      'mask' => '0x0000000f',
                                      'reset' => '0x0'
                                    },
                       'miccmect' => {
                                       'mask' => '0xffffffff',
                                       'number' => '0x7f1',
                                       'reset' => '0x0',
                                       'exists' => 'true'
                                     },
                       'mfdc' => {
                                   'exists' => 'true',
                                   'number' => '0x7f9',
                                   'mask' => '0x00070fff',
                                   'reset' => '0x00070040'
                                 },
                       'dicad1' => {
                                     'exists' => 'true',
                                     'comment' => 'Cache diagnostics.',
                                     'number' => '0x7ca',
                                     'debug' => 'true',
                                     'mask' => '0x3',
                                     'reset' => '0x0'
                                   },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'mstatus' => {
                                      'exists' => 'true',
                                      'mask' => '0x88',
                                      'reset' => '0x1800'
                                    },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'mitcnt0' => {
                                      'exists' => 'true',
                                      'number' => '0x7d2',
                                      'mask' => '0xffffffff',
                                      'reset' => '0x0'
                                    },
                       'mvendorid' => {
                                        'exists' => 'true',
                                        'mask' => '0x0',
                                        'reset' => '0x45'
                                      },
                       'misa' => {
                                   'reset' => '0x40001104',
                                   'mask' => '0x0',
                                   'exists' => 'true'
                                 },
                       'mitbnd0' => {
                                      'exists' => 'true',
                                      'reset' => '0xffffffff',
                                      'mask' => '0xffffffff',
                                      'number' => '0x7d3'
                                    },
                       'dicad0' => {
                                     'exists' => 'true',
                                     'mask' => '0xffffffff',
                                     'debug' => 'true',
                                     'reset' => '0x0',
                                     'number' => '0x7c9',
                                     'comment' => 'Cache diagnostics.'
                                   },
                       'mhpmcounter5' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'mhpmcounter6h' => {
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0',
                                            'exists' => 'true'
                                          },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'mrac' => {
                                   'mask' => '0xffffffff',
                                   'reset' => '0x0',
                                   'number' => '0x7c0',
                                   'comment' => 'Memory region io and cache control.',
                                   'shared' => 'true',
                                   'exists' => 'true'
                                 },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'tselect' => {
                                      'exists' => 'true',
                                      'reset' => '0x0',
                                      'mask' => '0x3'
                                    },
                       'mhpmcounter3h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          },
                       'mcountinhibit' => {
                                            'poke_mask' => '0x7d',
                                            'exists' => 'true',
                                            'commnet' => 'Performance counter inhibit. One bit per counter.',
                                            'mask' => '0x7d',
                                            'reset' => '0x0'
                                          },
                       'dcsr' => {
                                   'mask' => '0x00008c04',
                                   'debug' => 'true',
                                   'reset' => '0x40000003',
                                   'exists' => 'true',
                                   'poke_mask' => '0x00008dcc'
                                 },
                       'mhartid' => {
                                      'reset' => '0x0',
                                      'mask' => '0x0',
                                      'poke_mask' => '0xfffffff0',
                                      'exists' => 'true'
                                    },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'dicago' => {
                                     'comment' => 'Cache diagnostics.',
                                     'mask' => '0x0',
                                     'debug' => 'true',
                                     'reset' => '0x0',
                                     'number' => '0x7cb',
                                     'exists' => 'true'
                                   },
                       'micect' => {
                                     'exists' => 'true',
                                     'reset' => '0x0',
                                     'mask' => '0xffffffff',
                                     'number' => '0x7f0'
                                   },
                       'mhpmcounter5h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter3' => {
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0',
                                           'exists' => 'true'
                                         },
                       'mhpmcounter4h' => {
                                            'exists' => 'true',
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff'
                                          },
                       'dicawics' => {
                                       'exists' => 'true',
                                       'debug' => 'true',
                                       'reset' => '0x0',
                                       'mask' => '0x0130fffc',
                                       'number' => '0x7c8',
                                       'comment' => 'Cache diagnostics.'
                                     },
                       'mitcnt1' => {
                                      'number' => '0x7d5',
                                      'mask' => '0xffffffff',
                                      'reset' => '0x0',
                                      'exists' => 'true'
                                    },
                       'mitctl1' => {
                                      'reset' => '0x1',
                                      'mask' => '0x0000000f',
                                      'number' => '0x7d7',
                                      'exists' => 'true'
                                    },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'mitbnd1' => {
                                      'number' => '0x7d6',
                                      'mask' => '0xffffffff',
                                      'reset' => '0xffffffff',
                                      'exists' => 'true'
                                    },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter6' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'mie' => {
                                  'mask' => '0x70000888',
                                  'reset' => '0x0',
                                  'exists' => 'true'
                                },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'meipt' => {
                                    'comment' => 'External interrupt priority threshold.',
                                    'mask' => '0xf',
                                    'reset' => '0x0',
                                    'number' => '0xbc9',
                                    'exists' => 'true'
                                  },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    }
                     },
            'max_mmode_perf_event' => '516'
          );
1;
