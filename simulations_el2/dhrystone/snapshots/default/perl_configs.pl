#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by nimrodb on Mon Aug 10 21:56:21 IDT 2020
# 
#  cmd:    swerv -target=default 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'iccm' => {
                        'iccm_size_64' => '',
                        'iccm_bank_hi' => 3,
                        'iccm_num_banks' => '4',
                        'iccm_sadr' => '0xee000000',
                        'iccm_bank_bits' => 2,
                        'iccm_reserved' => '0x1000',
                        'iccm_enable' => 1,
                        'iccm_index_bits' => 12,
                        'iccm_num_banks_4' => '',
                        'iccm_offset' => '0xe000000',
                        'iccm_size' => 64,
                        'iccm_rows' => '4096',
                        'iccm_region' => '0xe',
                        'iccm_eadr' => '0xee00ffff',
                        'iccm_bank_index_lo' => 4,
                        'iccm_bits' => 16,
                        'iccm_data_cell' => 'ram_4096x39'
                      },
            'numiregs' => '32',
            'target' => 'default',
            'physical' => '1',
            'bus' => {
                       'lsu_bus_id' => '1',
                       'bus_prty_default' => '3',
                       'sb_bus_id' => '1',
                       'ifu_bus_prty' => '2',
                       'dma_bus_tag' => 1,
                       'sb_bus_tag' => 1,
                       'dma_bus_prty' => '2',
                       'lsu_bus_tag' => 3,
                       'ifu_bus_tag' => '3',
                       'ifu_bus_id' => '1',
                       'lsu_bus_prty' => '2',
                       'dma_bus_id' => '1',
                       'sb_bus_prty' => '2'
                     },
            'bht' => {
                       'bht_addr_hi' => 9,
                       'bht_addr_lo' => '2',
                       'bht_ghr_size' => 8,
                       'bht_hash_string' => '{hashin[8+1:2]^ghr[8-1:0]}// cf2',
                       'bht_size' => 512,
                       'bht_ghr_hash_1' => '',
                       'bht_array_depth' => 256,
                       'bht_ghr_range' => '7:0'
                     },
            'max_mmode_perf_event' => '516',
            'regwidth' => '32',
            'tec_rv_icg' => 'clockhdr',
            'num_mmode_perf_regs' => '4',
            'nmi_vec' => '0x11110000',
            'dccm' => {
                        'dccm_bits' => 16,
                        'dccm_num_banks' => '4',
                        'dccm_bank_bits' => 2,
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_enable' => '1',
                        'dccm_byte_width' => '4',
                        'dccm_fdata_width' => 39,
                        'dccm_sadr' => '0xf0040000',
                        'dccm_rows' => '4096',
                        'dccm_size' => 64,
                        'dccm_offset' => '0x40000',
                        'dccm_data_width' => 32,
                        'dccm_data_cell' => 'ram_4096x39',
                        'dccm_size_64' => '',
                        'dccm_reserved' => '0x1400',
                        'dccm_region' => '0xf',
                        'lsu_sb_bits' => 16,
                        'dccm_num_banks_4' => '',
                        'dccm_width_bits' => 2,
                        'dccm_index_bits' => 12,
                        'dccm_ecc_width' => 7
                      },
            'even_odd_trigger_chains' => 'true',
            'btb' => {
                       'btb_array_depth' => 256,
                       'btb_index1_lo' => '2',
                       'btb_index1_hi' => 9,
                       'btb_addr_lo' => '2',
                       'btb_index2_hi' => 17,
                       'btb_index2_lo' => 10,
                       'btb_btag_fold' => 0,
                       'btb_index3_hi' => 25,
                       'btb_index3_lo' => 18,
                       'btb_btag_size' => 5,
                       'btb_fold2_index_hash' => 0,
                       'btb_addr_hi' => 9,
                       'btb_size' => 512
                     },
            'core' => {
                        'no_iccm_no_icache' => 'derived',
                        'lsu_num_nbload' => '4',
                        'icache_only' => 'derived',
                        'lsu_stbuf_depth' => '4',
                        'fast_interrupt_redirect' => '1',
                        'iccm_icache' => 1,
                        'timer_legal_en' => '1',
                        'dma_buf_depth' => '5',
                        'lsu_num_nbload_width' => '2',
                        'iccm_only' => 'derived',
                        'fpga_optimize' => '0',
                        'lsu2dma' => 0
                      },
            'xlen' => 32,
            'retstack' => {
                            'ret_stack_size' => '8'
                          },
            'testbench' => {
                             'ext_datawidth' => '64',
                             'clock_period' => '100',
                             'build_axi_native' => 1,
                             'SDVT_AHB' => '1',
                             'assert_on' => '',
                             'lderr_rollback' => '1',
                             'TOP' => 'tb_top',
                             'RV_TOP' => '`TOP.rvtop',
                             'ext_addrwidth' => '32',
                             'build_axi4' => 1,
                             'sterr_rollback' => '0',
                             'CPU_TOP' => '`RV_TOP.swerv'
                           },
            'harts' => 1,
            'pic' => {
                       'pic_mpiccfg_count' => 1,
                       'pic_base_addr' => '0xf00c0000',
                       'pic_meie_mask' => '0x1',
                       'pic_meie_count' => 31,
                       'pic_meipt_offset' => '0x3004',
                       'pic_size' => 32,
                       'pic_meipt_count' => 31,
                       'pic_total_int_plus1' => 32,
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_offset' => '0xc0000',
                       'pic_bits' => 15,
                       'pic_region' => '0xf',
                       'pic_meipt_mask' => '0x0',
                       'pic_total_int' => 31,
                       'pic_meip_count' => 4,
                       'pic_meipl_count' => 31,
                       'pic_mpiccfg_mask' => '0x1',
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_meie_offset' => '0x2000',
                       'pic_meigwctrl_mask' => '0x3',
                       'pic_meipl_offset' => '0x0000',
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meigwclr_mask' => '0x0',
                       'pic_meipl_mask' => '0xf',
                       'pic_meip_offset' => '0x1000',
                       'pic_meigwctrl_count' => 31,
                       'pic_meip_mask' => '0x0',
                       'pic_int_words' => 1,
                       'pic_meigwclr_count' => 31
                     },
            'memmap' => {
                          'unused_region3' => '0x30000000',
                          'unused_region1' => '0x10000000',
                          'unused_region0' => '0x00000000',
                          'debug_sb_mem' => '0xb0580000',
                          'external_prog' => '0xb0000000',
                          'unused_region7' => '0x70000000',
                          'external_mem_hole' => '0x90000000',
                          'external_data' => '0xc0580000',
                          'unused_region5' => '0x50000000',
                          'unused_region4' => '0x40000000',
                          'serialio' => '0xd0580000',
                          'external_data_1' => '0x00000000',
                          'unused_region2' => '0x20000000',
                          'unused_region6' => '0x60000000'
                        },
            'protection' => {
                              'data_access_addr6' => '0x00000000',
                              'data_access_addr4' => '0x00000000',
                              'inst_access_addr0' => '0x0',
                              'inst_access_enable0' => '1',
                              'inst_access_enable7' => '0x0',
                              'data_access_addr0' => '0x0',
                              'inst_access_enable3' => '1',
                              'data_access_addr7' => '0x00000000',
                              'data_access_addr1' => '0xc0000000',
                              'data_access_addr2' => '0xa0000000',
                              'data_access_mask2' => '0x1fffffff',
                              'inst_access_mask1' => '0x3fffffff',
                              'data_access_mask4' => '0xffffffff',
                              'inst_access_enable2' => '1',
                              'inst_access_addr1' => '0xc0000000',
                              'inst_access_mask2' => '0x1fffffff',
                              'inst_access_addr5' => '0x00000000',
                              'inst_access_enable4' => '0x0',
                              'data_access_enable3' => '1',
                              'inst_access_addr4' => '0x00000000',
                              'data_access_enable2' => '1',
                              'data_access_mask0' => '0x7fffffff',
                              'data_access_enable6' => '0x0',
                              'data_access_mask6' => '0xffffffff',
                              'inst_access_mask5' => '0xffffffff',
                              'inst_access_addr3' => '0x80000000',
                              'data_access_mask1' => '0x3fffffff',
                              'data_access_mask5' => '0xffffffff',
                              'data_access_enable7' => '0x0',
                              'data_access_mask7' => '0xffffffff',
                              'inst_access_mask3' => '0x0fffffff',
                              'data_access_enable4' => '0x0',
                              'data_access_addr5' => '0x00000000',
                              'inst_access_enable6' => '0x0',
                              'inst_access_enable5' => '0x0',
                              'data_access_enable0' => '1',
                              'data_access_addr3' => '0x80000000',
                              'data_access_enable5' => '0x0',
                              'inst_access_mask6' => '0xffffffff',
                              'inst_access_mask7' => '0xffffffff',
                              'data_access_enable1' => '1',
                              'inst_access_mask4' => '0xffffffff',
                              'data_access_mask3' => '0x0fffffff',
                              'inst_access_addr7' => '0x00000000',
                              'inst_access_addr6' => '0x00000000',
                              'inst_access_addr2' => '0xa0000000',
                              'inst_access_mask0' => '0x7fffffff',
                              'inst_access_enable1' => '1'
                            },
            'csr' => {
                       'dicad0' => {
                                     'mask' => '0xffffffff',
                                     'exists' => 'true',
                                     'debug' => 'true',
                                     'comment' => 'Cache diagnostics.',
                                     'number' => '0x7c9',
                                     'reset' => '0x0'
                                   },
                       'mcgc' => {
                                   'reset' => '0x0',
                                   'poke_mask' => '0x000001ff',
                                   'number' => '0x7f8',
                                   'exists' => 'true',
                                   'mask' => '0x000001ff'
                                 },
                       'micect' => {
                                     'number' => '0x7f0',
                                     'reset' => '0x0',
                                     'mask' => '0xffffffff',
                                     'exists' => 'true'
                                   },
                       'mitbnd0' => {
                                      'number' => '0x7d3',
                                      'reset' => '0xffffffff',
                                      'mask' => '0xffffffff',
                                      'exists' => 'true'
                                    },
                       'mhpmcounter4h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'meicidpl' => {
                                       'reset' => '0x0',
                                       'comment' => 'External interrupt claim id priority level.',
                                       'number' => '0xbcb',
                                       'exists' => 'true',
                                       'mask' => '0xf'
                                     },
                       'dcsr' => {
                                   'mask' => '0x00008c04',
                                   'exists' => 'true',
                                   'debug' => 'true',
                                   'poke_mask' => '0x00008dcc',
                                   'reset' => '0x40000003'
                                 },
                       'dicawics' => {
                                       'reset' => '0x0',
                                       'comment' => 'Cache diagnostics.',
                                       'number' => '0x7c8',
                                       'exists' => 'true',
                                       'debug' => 'true',
                                       'mask' => '0x0130fffc'
                                     },
                       'mip' => {
                                  'mask' => '0x0',
                                  'exists' => 'true',
                                  'poke_mask' => '0x70000888',
                                  'reset' => '0x0'
                                },
                       'mitcnt1' => {
                                      'number' => '0x7d5',
                                      'reset' => '0x0',
                                      'mask' => '0xffffffff',
                                      'exists' => 'true'
                                    },
                       'dicago' => {
                                     'debug' => 'true',
                                     'exists' => 'true',
                                     'mask' => '0x0',
                                     'reset' => '0x0',
                                     'comment' => 'Cache diagnostics.',
                                     'number' => '0x7cb'
                                   },
                       'dicad1' => {
                                     'reset' => '0x0',
                                     'comment' => 'Cache diagnostics.',
                                     'number' => '0x7ca',
                                     'exists' => 'true',
                                     'debug' => 'true',
                                     'mask' => '0x3'
                                   },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter4' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'mitctl0' => {
                                      'number' => '0x7d4',
                                      'reset' => '0x1',
                                      'mask' => '0x00000007',
                                      'exists' => 'true'
                                    },
                       'mhpmevent5' => {
                                         'mask' => '0xffffffff',
                                         'exists' => 'true',
                                         'reset' => '0x0'
                                       },
                       'mstatus' => {
                                      'reset' => '0x1800',
                                      'exists' => 'true',
                                      'mask' => '0x88'
                                    },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'mhpmevent6' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'mhpmcounter3h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          },
                       'mhpmcounter5' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'marchid' => {
                                      'reset' => '0x00000010',
                                      'exists' => 'true',
                                      'mask' => '0x0'
                                    },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter6h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'mimpid' => {
                                     'reset' => '0x2',
                                     'mask' => '0x0',
                                     'exists' => 'true'
                                   },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'meipt' => {
                                    'reset' => '0x0',
                                    'comment' => 'External interrupt priority threshold.',
                                    'number' => '0xbc9',
                                    'exists' => 'true',
                                    'mask' => '0xf'
                                  },
                       'mdccmect' => {
                                       'reset' => '0x0',
                                       'number' => '0x7f2',
                                       'exists' => 'true',
                                       'mask' => '0xffffffff'
                                     },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'mitbnd1' => {
                                      'number' => '0x7d6',
                                      'reset' => '0xffffffff',
                                      'mask' => '0xffffffff',
                                      'exists' => 'true'
                                    },
                       'mrac' => {
                                   'number' => '0x7c0',
                                   'comment' => 'Memory region io and cache control.',
                                   'shared' => 'true',
                                   'reset' => '0x0',
                                   'mask' => '0xffffffff',
                                   'exists' => 'true'
                                 },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'dmst' => {
                                   'mask' => '0x0',
                                   'debug' => 'true',
                                   'exists' => 'true',
                                   'number' => '0x7c4',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'reset' => '0x0'
                                 },
                       'mhpmcounter6' => {
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff',
                                           'exists' => 'true'
                                         },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter3' => {
                                           'mask' => '0xffffffff',
                                           'exists' => 'true',
                                           'reset' => '0x0'
                                         },
                       'mhpmcounter5h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'mpmc' => {
                                   'exists' => 'true',
                                   'mask' => '0x2',
                                   'reset' => '0x2',
                                   'number' => '0x7c6'
                                 },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'miccmect' => {
                                       'mask' => '0xffffffff',
                                       'exists' => 'true',
                                       'number' => '0x7f1',
                                       'reset' => '0x0'
                                     },
                       'mhpmevent4' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'mhpmevent3' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'meicurpl' => {
                                       'reset' => '0x0',
                                       'comment' => 'External interrupt current priority level.',
                                       'number' => '0xbcc',
                                       'exists' => 'true',
                                       'mask' => '0xf'
                                     },
                       'tselect' => {
                                      'exists' => 'true',
                                      'mask' => '0x3',
                                      'reset' => '0x0'
                                    },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'mitcnt0' => {
                                      'mask' => '0xffffffff',
                                      'exists' => 'true',
                                      'number' => '0x7d2',
                                      'reset' => '0x0'
                                    },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'mscause' => {
                                      'mask' => '0x0000000f',
                                      'exists' => 'true',
                                      'number' => '0x7ff',
                                      'reset' => '0x0'
                                    },
                       'mhartid' => {
                                      'poke_mask' => '0xfffffff0',
                                      'reset' => '0x0',
                                      'mask' => '0x0',
                                      'exists' => 'true'
                                    },
                       'mie' => {
                                  'mask' => '0x70000888',
                                  'exists' => 'true',
                                  'reset' => '0x0'
                                },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'misa' => {
                                   'mask' => '0x0',
                                   'exists' => 'true',
                                   'reset' => '0x40001104'
                                 },
                       'mcpc' => {
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'reset' => '0x0',
                                   'comment' => 'Core pause',
                                   'number' => '0x7c2'
                                 },
                       'mfdc' => {
                                   'mask' => '0x00070fff',
                                   'exists' => 'true',
                                   'number' => '0x7f9',
                                   'reset' => '0x00070040'
                                 },
                       'mcountinhibit' => {
                                            'reset' => '0x0',
                                            'poke_mask' => '0x7d',
                                            'commnet' => 'Performance counter inhibit. One bit per counter.',
                                            'exists' => 'true',
                                            'mask' => '0x7d'
                                          },
                       'mitctl1' => {
                                      'reset' => '0x1',
                                      'number' => '0x7d7',
                                      'exists' => 'true',
                                      'mask' => '0x0000000f'
                                    },
                       'mvendorid' => {
                                        'mask' => '0x0',
                                        'exists' => 'true',
                                        'reset' => '0x45'
                                      }
                     },
            'reset_vec' => '0x80000000',
            'icache' => {
                          'icache_index_hi' => 12,
                          'icache_enable' => 1,
                          'icache_bank_lo' => 3,
                          'icache_beat_bits' => 3,
                          'icache_tag_cell' => 'ram_128x25',
                          'icache_data_index_lo' => 4,
                          'icache_num_lines_way' => '128',
                          'icache_beat_addr_hi' => 5,
                          'icache_num_lines_bank' => 64,
                          'icache_ecc' => '1',
                          'icache_bank_width' => 8,
                          'icache_status_bits' => 1,
                          'icache_scnd_last' => 6,
                          'icache_data_width' => 64,
                          'icache_2banks' => '1',
                          'icache_data_cell' => 'ram_512x71',
                          'icache_banks_way' => 2,
                          'icache_fdata_width' => 71,
                          'icache_tag_lo' => 13,
                          'icache_ln_sz' => 64,
                          'icache_bank_hi' => 3,
                          'icache_data_depth' => '512',
                          'icache_size' => 16,
                          'icache_num_lines' => 256,
                          'icache_num_ways' => 2,
                          'icache_num_beats' => 8,
                          'icache_tag_depth' => 128,
                          'icache_bank_bits' => 1,
                          'icache_tag_index_lo' => 6
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
                            }
                          ],
            'config_key' => '32\'hdeadbeef'
          );
1;
