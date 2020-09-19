#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by nimrodb on Mon Aug 10 21:54:25 IDT 2020
# 
#  cmd:    swerv -target=default 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'reset_vec' => '0x80000000',
            'nmi_vec' => '0x11110000',
            'btb' => {
                       'btb_index3_lo' => 18,
                       'btb_index1_hi' => 9,
                       'btb_btag_fold' => 0,
                       'btb_index3_hi' => 25,
                       'btb_index1_lo' => '2',
                       'btb_fold2_index_hash' => 0,
                       'btb_addr_hi' => 9,
                       'btb_index2_lo' => 10,
                       'btb_addr_lo' => '2',
                       'btb_array_depth' => 256,
                       'btb_size' => 512,
                       'btb_index2_hi' => 17,
                       'btb_btag_size' => 5
                     },
            'max_mmode_perf_event' => '516',
            'tec_rv_icg' => 'clockhdr',
            'regwidth' => '32',
            'memmap' => {
                          'unused_region1' => '0x10000000',
                          'unused_region2' => '0x20000000',
                          'unused_region0' => '0x00000000',
                          'unused_region6' => '0x60000000',
                          'external_data' => '0xc0580000',
                          'external_data_1' => '0x00000000',
                          'external_prog' => '0xb0000000',
                          'unused_region3' => '0x30000000',
                          'unused_region5' => '0x50000000',
                          'unused_region4' => '0x40000000',
                          'serialio' => '0xd0580000',
                          'debug_sb_mem' => '0xb0580000',
                          'unused_region7' => '0x70000000',
                          'external_mem_hole' => '0x90000000'
                        },
            'dccm' => {
                        'dccm_num_banks_4' => '',
                        'dccm_data_width' => 32,
                        'dccm_fdata_width' => 39,
                        'dccm_ecc_width' => 7,
                        'dccm_bank_bits' => 2,
                        'dccm_offset' => '0x40000',
                        'dccm_size' => 64,
                        'lsu_sb_bits' => 16,
                        'dccm_sadr' => '0xf0040000',
                        'dccm_size_64' => '',
                        'dccm_region' => '0xf',
                        'dccm_rows' => '4096',
                        'dccm_bits' => 16,
                        'dccm_byte_width' => '4',
                        'dccm_data_cell' => 'ram_4096x39',
                        'dccm_num_banks' => '4',
                        'dccm_index_bits' => 12,
                        'dccm_width_bits' => 2,
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_reserved' => '0x1400',
                        'dccm_enable' => '1'
                      },
            'protection' => {
                              'data_access_addr7' => '0x00000000',
                              'data_access_enable4' => '0x0',
                              'data_access_mask4' => '0xffffffff',
                              'inst_access_mask3' => '0x0fffffff',
                              'data_access_addr5' => '0x00000000',
                              'data_access_mask1' => '0x3fffffff',
                              'data_access_enable0' => '1',
                              'inst_access_mask6' => '0xffffffff',
                              'inst_access_mask2' => '0x1fffffff',
                              'inst_access_addr6' => '0x00000000',
                              'inst_access_addr5' => '0x00000000',
                              'data_access_mask0' => '0x7fffffff',
                              'inst_access_enable7' => '0x0',
                              'inst_access_addr4' => '0x00000000',
                              'data_access_mask3' => '0x0fffffff',
                              'inst_access_enable4' => '0x0',
                              'data_access_mask6' => '0xffffffff',
                              'inst_access_addr1' => '0xc0000000',
                              'data_access_mask5' => '0xffffffff',
                              'inst_access_enable6' => '0x0',
                              'data_access_addr0' => '0x0',
                              'inst_access_mask4' => '0xffffffff',
                              'inst_access_enable2' => '1',
                              'inst_access_mask0' => '0x7fffffff',
                              'data_access_addr3' => '0x80000000',
                              'data_access_enable5' => '0x0',
                              'inst_access_enable1' => '1',
                              'inst_access_enable0' => '1',
                              'data_access_mask2' => '0x1fffffff',
                              'data_access_enable2' => '1',
                              'inst_access_enable3' => '1',
                              'inst_access_addr2' => '0xa0000000',
                              'inst_access_mask7' => '0xffffffff',
                              'data_access_mask7' => '0xffffffff',
                              'data_access_addr4' => '0x00000000',
                              'data_access_addr1' => '0xc0000000',
                              'data_access_enable1' => '1',
                              'inst_access_mask1' => '0x3fffffff',
                              'data_access_enable6' => '0x0',
                              'data_access_addr2' => '0xa0000000',
                              'inst_access_mask5' => '0xffffffff',
                              'inst_access_addr3' => '0x80000000',
                              'data_access_enable7' => '0x0',
                              'data_access_addr6' => '0x00000000',
                              'data_access_enable3' => '1',
                              'inst_access_addr0' => '0x0',
                              'inst_access_enable5' => '0x0',
                              'inst_access_addr7' => '0x00000000'
                            },
            'target' => 'default',
            'even_odd_trigger_chains' => 'true',
            'config_key' => '32\'hdeadbeef',
            'icache' => {
                          'icache_data_depth' => '512',
                          'icache_status_bits' => 1,
                          'icache_bank_lo' => 3,
                          'icache_size' => 16,
                          'icache_data_width' => 64,
                          'icache_ecc' => '1',
                          'icache_num_beats' => 8,
                          'icache_num_lines_way' => '128',
                          'icache_2banks' => '1',
                          'icache_beat_bits' => 3,
                          'icache_data_cell' => 'ram_512x71',
                          'icache_tag_index_lo' => 6,
                          'icache_ln_sz' => 64,
                          'icache_tag_depth' => 128,
                          'icache_fdata_width' => 71,
                          'icache_scnd_last' => 6,
                          'icache_num_lines' => 256,
                          'icache_banks_way' => 2,
                          'icache_data_index_lo' => 4,
                          'icache_index_hi' => 12,
                          'icache_beat_addr_hi' => 5,
                          'icache_tag_lo' => 13,
                          'icache_enable' => 1,
                          'icache_tag_cell' => 'ram_128x25',
                          'icache_num_ways' => 2,
                          'icache_bank_bits' => 1,
                          'icache_num_lines_bank' => 64,
                          'icache_bank_width' => 8,
                          'icache_bank_hi' => 3
                        },
            'csr' => {
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter3' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'mhpmevent3' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'mvendorid' => {
                                        'reset' => '0x45',
                                        'mask' => '0x0',
                                        'exists' => 'true'
                                      },
                       'mhpmevent4' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'mitctl0' => {
                                      'mask' => '0x00000007',
                                      'exists' => 'true',
                                      'number' => '0x7d4',
                                      'reset' => '0x1'
                                    },
                       'mpmc' => {
                                   'reset' => '0x2',
                                   'number' => '0x7c6',
                                   'exists' => 'true',
                                   'mask' => '0x2'
                                 },
                       'mitctl1' => {
                                      'exists' => 'true',
                                      'mask' => '0x0000000f',
                                      'reset' => '0x1',
                                      'number' => '0x7d7'
                                    },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'dicad0' => {
                                     'number' => '0x7c9',
                                     'reset' => '0x0',
                                     'comment' => 'Cache diagnostics.',
                                     'exists' => 'true',
                                     'debug' => 'true',
                                     'mask' => '0xffffffff'
                                   },
                       'mitbnd0' => {
                                      'number' => '0x7d3',
                                      'reset' => '0xffffffff',
                                      'mask' => '0xffffffff',
                                      'exists' => 'true'
                                    },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'mrac' => {
                                   'mask' => '0xffffffff',
                                   'exists' => 'true',
                                   'comment' => 'Memory region io and cache control.',
                                   'shared' => 'true',
                                   'reset' => '0x0',
                                   'number' => '0x7c0'
                                 },
                       'dicad1' => {
                                     'comment' => 'Cache diagnostics.',
                                     'reset' => '0x0',
                                     'number' => '0x7ca',
                                     'mask' => '0x3',
                                     'debug' => 'true',
                                     'exists' => 'true'
                                   },
                       'mhpmcounter5' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'mhpmcounter5h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'misa' => {
                                   'mask' => '0x0',
                                   'exists' => 'true',
                                   'reset' => '0x40001104'
                                 },
                       'mie' => {
                                  'reset' => '0x0',
                                  'exists' => 'true',
                                  'mask' => '0x70000888'
                                },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'mitbnd1' => {
                                      'exists' => 'true',
                                      'mask' => '0xffffffff',
                                      'reset' => '0xffffffff',
                                      'number' => '0x7d6'
                                    },
                       'marchid' => {
                                      'reset' => '0x00000010',
                                      'mask' => '0x0',
                                      'exists' => 'true'
                                    },
                       'mhpmcounter4h' => {
                                            'reset' => '0x0',
                                            'exists' => 'true',
                                            'mask' => '0xffffffff'
                                          },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'mstatus' => {
                                      'mask' => '0x88',
                                      'exists' => 'true',
                                      'reset' => '0x1800'
                                    },
                       'mscause' => {
                                      'reset' => '0x0',
                                      'number' => '0x7ff',
                                      'mask' => '0x0000000f',
                                      'exists' => 'true'
                                    },
                       'mhpmevent5' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'mhpmcounter3h' => {
                                            'reset' => '0x0',
                                            'exists' => 'true',
                                            'mask' => '0xffffffff'
                                          },
                       'mitcnt0' => {
                                      'number' => '0x7d2',
                                      'reset' => '0x0',
                                      'exists' => 'true',
                                      'mask' => '0xffffffff'
                                    },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'meicidpl' => {
                                       'mask' => '0xf',
                                       'exists' => 'true',
                                       'comment' => 'External interrupt claim id priority level.',
                                       'reset' => '0x0',
                                       'number' => '0xbcb'
                                     },
                       'mimpid' => {
                                     'mask' => '0x0',
                                     'exists' => 'true',
                                     'reset' => '0x2'
                                   },
                       'dmst' => {
                                   'number' => '0x7c4',
                                   'reset' => '0x0',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'exists' => 'true',
                                   'debug' => 'true',
                                   'mask' => '0x0'
                                 },
                       'mfdc' => {
                                   'reset' => '0x00070040',
                                   'number' => '0x7f9',
                                   'exists' => 'true',
                                   'mask' => '0x00070fff'
                                 },
                       'mcgc' => {
                                   'exists' => 'true',
                                   'poke_mask' => '0x000001ff',
                                   'mask' => '0x000001ff',
                                   'reset' => '0x0',
                                   'number' => '0x7f8'
                                 },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'mitcnt1' => {
                                      'exists' => 'true',
                                      'mask' => '0xffffffff',
                                      'number' => '0x7d5',
                                      'reset' => '0x0'
                                    },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'meicurpl' => {
                                       'exists' => 'true',
                                       'mask' => '0xf',
                                       'reset' => '0x0',
                                       'number' => '0xbcc',
                                       'comment' => 'External interrupt current priority level.'
                                     },
                       'tselect' => {
                                      'reset' => '0x0',
                                      'exists' => 'true',
                                      'mask' => '0x3'
                                    },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'miccmect' => {
                                       'number' => '0x7f1',
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'mask' => '0xffffffff'
                                     },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'mhartid' => {
                                      'mask' => '0x0',
                                      'exists' => 'true',
                                      'poke_mask' => '0xfffffff0',
                                      'reset' => '0x0'
                                    },
                       'mdccmect' => {
                                       'mask' => '0xffffffff',
                                       'exists' => 'true',
                                       'number' => '0x7f2',
                                       'reset' => '0x0'
                                     },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter4' => {
                                           'reset' => '0x0',
                                           'exists' => 'true',
                                           'mask' => '0xffffffff'
                                         },
                       'mip' => {
                                  'reset' => '0x0',
                                  'poke_mask' => '0x70000888',
                                  'exists' => 'true',
                                  'mask' => '0x0'
                                },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'mcountinhibit' => {
                                            'poke_mask' => '0x7d',
                                            'exists' => 'true',
                                            'mask' => '0x7d',
                                            'reset' => '0x0',
                                            'commnet' => 'Performance counter inhibit. One bit per counter.'
                                          },
                       'dcsr' => {
                                   'exists' => 'true',
                                   'poke_mask' => '0x00008dcc',
                                   'mask' => '0x00008c04',
                                   'debug' => 'true',
                                   'reset' => '0x40000003'
                                 },
                       'mhpmcounter6' => {
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff',
                                           'exists' => 'true'
                                         },
                       'micect' => {
                                     'reset' => '0x0',
                                     'number' => '0x7f0',
                                     'exists' => 'true',
                                     'mask' => '0xffffffff'
                                   },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter6h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'dicago' => {
                                     'reset' => '0x0',
                                     'number' => '0x7cb',
                                     'comment' => 'Cache diagnostics.',
                                     'exists' => 'true',
                                     'debug' => 'true',
                                     'mask' => '0x0'
                                   },
                       'mhpmevent6' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'dicawics' => {
                                       'comment' => 'Cache diagnostics.',
                                       'reset' => '0x0',
                                       'number' => '0x7c8',
                                       'mask' => '0x0130fffc',
                                       'debug' => 'true',
                                       'exists' => 'true'
                                     },
                       'meipt' => {
                                    'comment' => 'External interrupt priority threshold.',
                                    'reset' => '0x0',
                                    'number' => '0xbc9',
                                    'mask' => '0xf',
                                    'exists' => 'true'
                                  },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'mcpc' => {
                                   'mask' => '0x0',
                                   'exists' => 'true',
                                   'comment' => 'Core pause',
                                   'number' => '0x7c2',
                                   'reset' => '0x0'
                                 }
                     },
            'core' => {
                        'timer_legal_en' => '1',
                        'lsu_stbuf_depth' => '4',
                        'icache_only' => 'derived',
                        'fast_interrupt_redirect' => '1',
                        'lsu2dma' => 0,
                        'lsu_num_nbload' => '4',
                        'iccm_only' => 'derived',
                        'no_iccm_no_icache' => 'derived',
                        'lsu_num_nbload_width' => '2',
                        'dma_buf_depth' => '5',
                        'fpga_optimize' => '0',
                        'iccm_icache' => 1
                      },
            'harts' => 1,
            'bus' => {
                       'ifu_bus_tag' => '3',
                       'lsu_bus_tag' => 3,
                       'lsu_bus_id' => '1',
                       'dma_bus_prty' => '2',
                       'sb_bus_tag' => 1,
                       'ifu_bus_id' => '1',
                       'dma_bus_tag' => 1,
                       'ifu_bus_prty' => '2',
                       'bus_prty_default' => '3',
                       'dma_bus_id' => '1',
                       'lsu_bus_prty' => '2',
                       'sb_bus_prty' => '2',
                       'sb_bus_id' => '1'
                     },
            'iccm' => {
                        'iccm_enable' => 1,
                        'iccm_num_banks' => '4',
                        'iccm_num_banks_4' => '',
                        'iccm_reserved' => '0x1000',
                        'iccm_index_bits' => 12,
                        'iccm_bank_hi' => 3,
                        'iccm_data_cell' => 'ram_4096x39',
                        'iccm_size_64' => '',
                        'iccm_size' => 64,
                        'iccm_rows' => '4096',
                        'iccm_bank_index_lo' => 4,
                        'iccm_eadr' => '0xee00ffff',
                        'iccm_offset' => '0xe000000',
                        'iccm_region' => '0xe',
                        'iccm_bank_bits' => 2,
                        'iccm_bits' => 16,
                        'iccm_sadr' => '0xee000000'
                      },
            'numiregs' => '32',
            'physical' => '1',
            'bht' => {
                       'bht_ghr_size' => 8,
                       'bht_size' => 512,
                       'bht_array_depth' => 256,
                       'bht_hash_string' => '{hashin[8+1:2]^ghr[8-1:0]}// cf2',
                       'bht_addr_lo' => '2',
                       'bht_ghr_hash_1' => '',
                       'bht_addr_hi' => 9,
                       'bht_ghr_range' => '7:0'
                     },
            'xlen' => 32,
            'num_mmode_perf_regs' => '4',
            'retstack' => {
                            'ret_stack_size' => '8'
                          },
            'pic' => {
                       'pic_meipl_offset' => '0x0000',
                       'pic_meipt_count' => 31,
                       'pic_total_int' => 31,
                       'pic_meigwclr_mask' => '0x0',
                       'pic_offset' => '0xc0000',
                       'pic_meigwctrl_mask' => '0x3',
                       'pic_total_int_plus1' => 32,
                       'pic_meip_mask' => '0x0',
                       'pic_meie_mask' => '0x1',
                       'pic_meie_count' => 31,
                       'pic_meigwctrl_count' => 31,
                       'pic_int_words' => 1,
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_meipt_offset' => '0x3004',
                       'pic_meigwclr_count' => 31,
                       'pic_meipl_mask' => '0xf',
                       'pic_bits' => 15,
                       'pic_meie_offset' => '0x2000',
                       'pic_meipt_mask' => '0x0',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_meipl_count' => 31,
                       'pic_base_addr' => '0xf00c0000',
                       'pic_mpiccfg_count' => 1,
                       'pic_region' => '0xf',
                       'pic_meip_offset' => '0x1000',
                       'pic_size' => 32,
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_meip_count' => 4,
                       'pic_mpiccfg_mask' => '0x1'
                     },
            'testbench' => {
                             'ext_datawidth' => '64',
                             'SDVT_AHB' => '1',
                             'lderr_rollback' => '1',
                             'build_axi_native' => 1,
                             'clock_period' => '100',
                             'ext_addrwidth' => '32',
                             'build_axi4' => 1,
                             'assert_on' => '',
                             'TOP' => 'tb_top',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'sterr_rollback' => '0',
                             'RV_TOP' => '`TOP.rvtop'
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
                            }
                          ]
          );
1;
