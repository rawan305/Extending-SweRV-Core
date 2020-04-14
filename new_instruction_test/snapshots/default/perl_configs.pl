#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by smep on Tue Apr 14 12:40:58 UTC 2020
# 
#  cmd:    swerv -target=default 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'btb' => {
                       'btb_btag_fold' => 1,
                       'btb_btag_size' => 9,
                       'btb_array_depth' => 4,
                       'btb_addr_lo' => '4',
                       'btb_size' => 32,
                       'btb_index2_hi' => 7,
                       'btb_index2_lo' => 6,
                       'btb_index1_lo' => '4',
                       'btb_index3_lo' => 8,
                       'btb_index3_hi' => 9,
                       'btb_addr_hi' => 5,
                       'btb_index1_hi' => 5
                     },
            'physical' => '1',
            'iccm' => {
                        'iccm_size' => 512,
                        'iccm_bits' => 19,
                        'iccm_region' => '0xe',
                        'iccm_num_banks_8' => '',
                        'iccm_size_512' => '',
                        'iccm_num_banks' => '8',
                        'iccm_rows' => '16384',
                        'iccm_offset' => '0xe000000',
                        'iccm_eadr' => '0xee07ffff',
                        'iccm_reserved' => '0x1000',
                        'iccm_bank_bits' => 3,
                        'iccm_data_cell' => 'ram_16384x39',
                        'iccm_index_bits' => 14,
                        'iccm_sadr' => '0xee000000'
                      },
            'bus' => {
                       'ifu_bus_tag' => '3',
                       'dma_bus_tag' => '1',
                       'lsu_bus_tag' => 4,
                       'sb_bus_tag' => '1'
                     },
            'verilator' => '',
            'even_odd_trigger_chains' => 'true',
            'xlen' => 32,
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
                            }
                          ],
            'target' => 'default',
            'nmi_vec' => '0x11110000',
            'max_mmode_perf_event' => '50',
            'core' => {
                        'lsu_num_nbload_width' => '3',
                        'dma_buf_depth' => '4',
                        'lsu_stbuf_depth' => '8',
                        'lsu_num_nbload' => '8',
                        'dec_instbuf_depth' => '4'
                      },
            'testbench' => {
                             'sterr_rollback' => '0',
                             'build_axi4' => '1',
                             'clock_period' => '100',
                             'ext_addrwidth' => '32',
                             'assert_on' => '',
                             'TOP' => 'tb_top',
                             'datawidth' => '64',
                             'CPU_TOP' => '`RV_TOP.swerv',
                             'SDVT_AHB' => '1',
                             'lderr_rollback' => '1',
                             'RV_TOP' => '`TOP.rvtop',
                             'ext_datawidth' => '64'
                           },
            'bht' => {
                       'bht_array_depth' => 16,
                       'bht_addr_hi' => 7,
                       'bht_ghr_size' => 5,
                       'bht_size' => 128,
                       'bht_ghr_range' => '4:0',
                       'bht_ghr_pad' => 'fghr[4],3\'b0',
                       'bht_addr_lo' => '4',
                       'bht_ghr_pad2' => 'fghr[4:3],2\'b0',
                       'bht_hash_string' => '{ghr[3:2] ^ {ghr[3+1], {4-1-2{1\'b0} } },hashin[5:4]^ghr[2-1:0]}'
                     },
            'reset_vec' => '0x80000000',
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'num_mmode_perf_regs' => '4',
            'tec_rv_icg' => 'clockhdr',
            'pic' => {
                       'pic_meipt_offset' => '0x3004',
                       'pic_total_int' => 8,
                       'pic_int_words' => 1,
                       'pic_meie_offset' => '0x2000',
                       'pic_region' => '0xf',
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_size' => 32,
                       'pic_bits' => 15,
                       'pic_total_int_plus1' => 9,
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_offset' => '0xc0000',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_meip_offset' => '0x1000',
                       'pic_meipl_offset' => '0x0000',
                       'pic_base_addr' => '0xf00c0000'
                     },
            'icache' => {
                          'icache_tag_high' => 12,
                          'icache_tag_cell' => 'ram_64x21',
                          'icache_taddr_high' => 5,
                          'icache_ic_rows' => '256',
                          'icache_size' => 16,
                          'icache_tag_low' => '6',
                          'icache_ic_index' => 8,
                          'icache_enable' => '1',
                          'icache_data_cell' => 'ram_256x34',
                          'icache_tag_depth' => 64,
                          'icache_ic_depth' => 8
                        },
            'protection' => {
                              'data_access_enable2' => '0x0',
                              'data_access_enable7' => '0x0',
                              'data_access_addr6' => '0x00000000',
                              'inst_access_enable2' => '0x0',
                              'data_access_mask6' => '0xffffffff',
                              'data_access_addr3' => '0x00000000',
                              'data_access_enable5' => '0x0',
                              'inst_access_mask1' => '0xffffffff',
                              'data_access_addr2' => '0x00000000',
                              'inst_access_enable4' => '0x0',
                              'data_access_mask1' => '0xffffffff',
                              'data_access_enable1' => '0x0',
                              'inst_access_enable3' => '0x0',
                              'inst_access_enable7' => '0x0',
                              'data_access_mask7' => '0xffffffff',
                              'inst_access_enable6' => '0x0',
                              'data_access_mask4' => '0xffffffff',
                              'inst_access_enable0' => '0x0',
                              'data_access_mask3' => '0xffffffff',
                              'inst_access_addr2' => '0x00000000',
                              'data_access_enable3' => '0x0',
                              'inst_access_addr0' => '0x00000000',
                              'data_access_mask2' => '0xffffffff',
                              'inst_access_addr1' => '0x00000000',
                              'inst_access_mask7' => '0xffffffff',
                              'inst_access_enable5' => '0x0',
                              'inst_access_mask3' => '0xffffffff',
                              'data_access_enable6' => '0x0',
                              'inst_access_mask6' => '0xffffffff',
                              'data_access_enable0' => '0x0',
                              'data_access_addr5' => '0x00000000',
                              'inst_access_mask4' => '0xffffffff',
                              'inst_access_addr3' => '0x00000000',
                              'inst_access_mask5' => '0xffffffff',
                              'data_access_addr4' => '0x00000000',
                              'inst_access_enable1' => '0x0',
                              'data_access_enable4' => '0x0',
                              'inst_access_addr6' => '0x00000000',
                              'data_access_addr7' => '0x00000000',
                              'data_access_addr1' => '0x00000000',
                              'inst_access_addr5' => '0x00000000',
                              'data_access_addr0' => '0x00000000',
                              'inst_access_mask2' => '0xffffffff',
                              'data_access_mask5' => '0xffffffff',
                              'inst_access_addr7' => '0x00000000',
                              'data_access_mask0' => '0xffffffff',
                              'inst_access_mask0' => '0xffffffff',
                              'inst_access_addr4' => '0x00000000'
                            },
            'harts' => 1,
            'regwidth' => '32',
            'numiregs' => '32',
            'dccm' => {
                        'dccm_region' => '0xf',
                        'dccm_eadr' => '0xf004ffff',
                        'dccm_num_banks' => '8',
                        'dccm_width_bits' => 2,
                        'dccm_offset' => '0x40000',
                        'dccm_bank_bits' => 3,
                        'dccm_num_banks_8' => '',
                        'dccm_data_width' => 32,
                        'dccm_size_64' => '',
                        'lsu_sb_bits' => 16,
                        'dccm_byte_width' => '4',
                        'dccm_fdata_width' => 39,
                        'dccm_bits' => 16,
                        'dccm_rows' => '2048',
                        'dccm_reserved' => '0x1000',
                        'dccm_sadr' => '0xf0040000',
                        'dccm_ecc_width' => 7,
                        'dccm_enable' => '1',
                        'dccm_data_cell' => 'ram_2048x39',
                        'dccm_size' => 64,
                        'dccm_index_bits' => 11
                      },
            'memmap' => {
                          'external_data' => '0xc0580000',
                          'external_prog' => '0xb0000000',
                          'debug_sb_mem' => '0xb0580000',
                          'external_data_1' => '0x00000000',
                          'serialio' => '0xd0580000'
                        },
            'csr' => {
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'marchid' => {
                                      'exists' => 'true',
                                      'reset' => '0x0000000b',
                                      'mask' => '0x0'
                                    },
                       'dicawics' => {
                                       'number' => '0x7c8',
                                       'exists' => 'true',
                                       'reset' => '0x0',
                                       'debug' => 'true',
                                       'mask' => '0x0130fffc',
                                       'comment' => 'Cache diagnostics.'
                                     },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'dicago' => {
                                     'comment' => 'Cache diagnostics.',
                                     'number' => '0x7cb',
                                     'exists' => 'true',
                                     'mask' => '0x0',
                                     'debug' => 'true',
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
                       'mhpmevent4' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'meipt' => {
                                    'comment' => 'External interrupt priority threshold.',
                                    'reset' => '0x0',
                                    'mask' => '0xf',
                                    'number' => '0xbc9',
                                    'exists' => 'true'
                                  },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'mstatus' => {
                                      'mask' => '0x88',
                                      'reset' => '0x1800',
                                      'exists' => 'true'
                                    },
                       'mhpmcounter3' => {
                                           'exists' => 'true',
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff'
                                         },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'mpmc' => {
                                   'comment' => 'Core pause: Implemented as read only.',
                                   'reset' => '0x0',
                                   'mask' => '0x0',
                                   'exists' => 'true',
                                   'number' => '0x7c6'
                                 },
                       'mcgc' => {
                                   'poke_mask' => '0x000001ff',
                                   'reset' => '0x0',
                                   'mask' => '0x000001ff',
                                   'exists' => 'true',
                                   'number' => '0x7f8'
                                 },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'dcsr' => {
                                   'exists' => 'true',
                                   'reset' => '0x40000003',
                                   'mask' => '0x00008c04',
                                   'poke_mask' => '0x00008dcc'
                                 },
                       'mvendorid' => {
                                        'exists' => 'true',
                                        'reset' => '0x45',
                                        'mask' => '0x0'
                                      },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'dicad0' => {
                                     'mask' => '0xffffffff',
                                     'reset' => '0x0',
                                     'debug' => 'true',
                                     'number' => '0x7c9',
                                     'exists' => 'true',
                                     'comment' => 'Cache diagnostics.'
                                   },
                       'miccmect' => {
                                       'exists' => 'true',
                                       'number' => '0x7f1',
                                       'reset' => '0x0',
                                       'mask' => '0xffffffff'
                                     },
                       'mhpmcounter4h' => {
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0',
                                            'exists' => 'true'
                                          },
                       'micect' => {
                                     'mask' => '0xffffffff',
                                     'reset' => '0x0',
                                     'number' => '0x7f0',
                                     'exists' => 'true'
                                   },
                       'tselect' => {
                                      'mask' => '0x3',
                                      'reset' => '0x0',
                                      'exists' => 'true'
                                    },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'mdccmect' => {
                                       'reset' => '0x0',
                                       'mask' => '0xffffffff',
                                       'number' => '0x7f2',
                                       'exists' => 'true'
                                     },
                       'meicidpl' => {
                                       'number' => '0xbcb',
                                       'exists' => 'true',
                                       'mask' => '0xf',
                                       'reset' => '0x0',
                                       'comment' => 'External interrupt claim id priority level.'
                                     },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter5h' => {
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0',
                                            'exists' => 'true'
                                          },
                       'mhpmcounter3h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter5' => {
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0',
                                           'exists' => 'true'
                                         },
                       'mhpmcounter4' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'mhpmcounter6h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'misa' => {
                                   'exists' => 'true',
                                   'reset' => '0x40001104',
                                   'mask' => '0x0'
                                 },
                       'dmst' => {
                                   'number' => '0x7c4',
                                   'exists' => 'true',
                                   'reset' => '0x0',
                                   'debug' => 'true',
                                   'mask' => '0x0',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.'
                                 },
                       'mie' => {
                                  'mask' => '0x40000888',
                                  'reset' => '0x0',
                                  'exists' => 'true'
                                },
                       'mfdc' => {
                                   'exists' => 'true',
                                   'number' => '0x7f9',
                                   'mask' => '0x000707ff',
                                   'reset' => '0x00070000'
                                 },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'mip' => {
                                  'poke_mask' => '0x40000888',
                                  'exists' => 'true',
                                  'mask' => '0x0',
                                  'reset' => '0x0'
                                },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'meicpct' => {
                                      'mask' => '0x0',
                                      'reset' => '0x0',
                                      'number' => '0xbca',
                                      'exists' => 'true',
                                      'comment' => 'External claim id/priority capture.'
                                    },
                       'mimpid' => {
                                     'mask' => '0x0',
                                     'reset' => '0x2',
                                     'exists' => 'true'
                                   },
                       'dicad1' => {
                                     'comment' => 'Cache diagnostics.',
                                     'debug' => 'true',
                                     'reset' => '0x0',
                                     'mask' => '0x3',
                                     'exists' => 'true',
                                     'number' => '0x7ca'
                                   },
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'mhpmcounter6' => {
                                           'exists' => 'true',
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff'
                                         },
                       'mhpmevent3' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'meicurpl' => {
                                       'exists' => 'true',
                                       'number' => '0xbcc',
                                       'mask' => '0xf',
                                       'reset' => '0x0',
                                       'comment' => 'External interrupt current priority level.'
                                     },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'mcpc' => {
                                   'number' => '0x7c2',
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'reset' => '0x0'
                                 }
                     }
          );
1;
