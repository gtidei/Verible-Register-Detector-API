{
  "FSM.sv": {
    "tree": {
      "children": [
        {
          "children": [
            {
              "end": 10,
              "start": 0,
              "tag": "`timescale"
            },
            {
              "children": [
                {
                  "end": 14,
                  "start": 11,
                  "tag": "TK_TimeLiteral",
                  "text": "1ns"
                }
              ],
              "tag": "kTimeLiteral"
            },
            {
              "end": 15,
              "start": 14,
              "tag": "/"
            },
            {
              "children": [
                {
                  "end": 18,
                  "start": 15,
                  "tag": "TK_TimeLiteral",
                  "text": "1ns"
                }
              ],
              "tag": "kTimeLiteral"
            }
          ],
          "tag": "kTimescaleDirective"
        },
        {
          "children": [
            {
              "children": [
                {
                  "end": 26,
                  "start": 20,
                  "tag": "module"
                },
                null,
                {
                  "end": 30,
                  "start": 27,
                  "tag": "SymbolIdentifier",
                  "text": "FSM"
                },
                null,
                null,
                {
                  "children": [
                    {
                      "end": 31,
                      "start": 30,
                      "tag": "("
                    },
                    {
                      "children": [
                        {
                          "children": [
                            {
                              "end": 41,
                              "start": 36,
                              "tag": "input"
                            },
                            {
                              "end": 46,
                              "start": 42,
                              "tag": "wire"
                            },
                            {
                              "children": [
                                null,
                                null,
                                null,
                                null
                              ],
                              "tag": "kDataType"
                            },
                            {
                              "children": [
                                {
                                  "end": 50,
                                  "start": 47,
                                  "tag": "SymbolIdentifier",
                                  "text": "clk"
                                },
                                null
                              ],
                              "tag": "kUnqualifiedId"
                            },
                            {
                              "children": [
                                null
                              ],
                              "tag": "kUnpackedDimensions"
                            },
                            null
                          ],
                          "tag": "kPortDeclaration"
                        },
                        {
                          "end": 51,
                          "start": 50,
                          "tag": ","
                        },
                        {
                          "children": [
                            {
                              "end": 61,
                              "start": 56,
                              "tag": "input"
                            },
                            {
                              "end": 66,
                              "start": 62,
                              "tag": "wire"
                            },
                            {
                              "children": [
                                null,
                                null,
                                null,
                                null
                              ],
                              "tag": "kDataType"
                            },
                            {
                              "children": [
                                {
                                  "end": 72,
                                  "start": 67,
                                  "tag": "SymbolIdentifier",
                                  "text": "reset"
                                },
                                null
                              ],
                              "tag": "kUnqualifiedId"
                            },
                            {
                              "children": [
                                null
                              ],
                              "tag": "kUnpackedDimensions"
                            },
                            null
                          ],
                          "tag": "kPortDeclaration"
                        },
                        {
                          "end": 73,
                          "start": 72,
                          "tag": ","
                        },
                        {
                          "children": [
                            {
                              "end": 83,
                              "start": 78,
                              "tag": "input"
                            },
                            {
                              "end": 88,
                              "start": 84,
                              "tag": "wire"
                            },
                            {
                              "children": [
                                null,
                                null,
                                null,
                                null
                              ],
                              "tag": "kDataType"
                            },
                            {
                              "children": [
                                {
                                  "end": 98,
                                  "start": 89,
                                  "tag": "SymbolIdentifier",
                                  "text": "input_bit"
                                },
                                null
                              ],
                              "tag": "kUnqualifiedId"
                            },
                            {
                              "children": [
                                null
                              ],
                              "tag": "kUnpackedDimensions"
                            },
                            null
                          ],
                          "tag": "kPortDeclaration"
                        },
                        {
                          "end": 99,
                          "start": 98,
                          "tag": ","
                        },
                        {
                          "children": [
                            {
                              "end": 110,
                              "start": 104,
                              "tag": "output"
                            },
                            {
                              "end": 115,
                              "start": 111,
                              "tag": "wire"
                            },
                            {
                              "children": [
                                null,
                                null,
                                null,
                                null
                              ],
                              "tag": "kDataType"
                            },
                            {
                              "children": [
                                {
                                  "end": 129,
                                  "start": 116,
                                  "tag": "SymbolIdentifier",
                                  "text": "output_signal"
                                },
                                null
                              ],
                              "tag": "kUnqualifiedId"
                            },
                            {
                              "children": [
                                null
                              ],
                              "tag": "kUnpackedDimensions"
                            },
                            null
                          ],
                          "tag": "kPortDeclaration"
                        }
                      ],
                      "tag": "kPortDeclarationList"
                    },
                    {
                      "end": 131,
                      "start": 130,
                      "tag": ")"
                    }
                  ],
                  "tag": "kParenGroup"
                },
                null,
                {
                  "end": 132,
                  "start": 131,
                  "tag": ";"
                }
              ],
              "tag": "kModuleHeader"
            },
            {
              "children": [
                {
                  "children": [
                    null,
                    {
                      "children": [
                        {
                          "children": [
                            {
                              "children": [
                                null,
                                {
                                  "children": [
                                    {
                                      "end": 140,
                                      "start": 137,
                                      "tag": "reg"
                                    },
                                    null
                                  ],
                                  "tag": "kDataTypePrimitive"
                                },
                                null,
                                {
                                  "children": [
                                    {
                                      "children": [
                                        {
                                          "children": [
                                            {
                                              "end": 142,
                                              "start": 141,
                                              "tag": "["
                                            },
                                            {
                                              "children": [
                                                {
                                                  "children": [
                                                    {
                                                      "end": 143,
                                                      "start": 142,
                                                      "tag": "TK_DecNumber",
                                                      "text": "1"
                                                    }
                                                  ],
                                                  "tag": "kNumber"
                                                }
                                              ],
                                              "tag": "kExpression"
                                            },
                                            {
                                              "end": 144,
                                              "start": 143,
                                              "tag": ":"
                                            },
                                            {
                                              "children": [
                                                {
                                                  "children": [
                                                    {
                                                      "end": 145,
                                                      "start": 144,
                                                      "tag": "TK_DecNumber",
                                                      "text": "0"
                                                    }
                                                  ],
                                                  "tag": "kNumber"
                                                }
                                              ],
                                              "tag": "kExpression"
                                            },
                                            {
                                              "end": 146,
                                              "start": 145,
                                              "tag": "]"
                                            }
                                          ],
                                          "tag": "kDimensionRange"
                                        }
                                      ],
                                      "tag": "kDeclarationDimensions"
                                    }
                                  ],
                                  "tag": "kPackedDimensions"
                                }
                              ],
                              "tag": "kDataType"
                            }
                          ],
                          "tag": "kInstantiationType"
                        },
                        {
                          "children": [
                            {
                              "children": [
                                {
                                  "end": 152,
                                  "start": 147,
                                  "tag": "SymbolIdentifier",
                                  "text": "state"
                                },
                                {
                                  "children": [
                                    null
                                  ],
                                  "tag": "kUnpackedDimensions"
                                },
                                null
                              ],
                              "tag": "kRegisterVariable"
                            }
                          ],
                          "tag": "kGateInstanceRegisterVariableList"
                        }
                      ],
                      "tag": "kInstantiationBase"
                    },
                    {
                      "end": 153,
                      "start": 152,
                      "tag": ";"
                    }
                  ],
                  "tag": "kDataDeclaration"
                },
                {
                  "children": [
                    {
                      "end": 168,
                      "start": 159,
                      "tag": "parameter"
                    },
                    {
                      "children": [
                        {
                          "children": [
                            null,
                            null,
                            null
                          ],
                          "tag": "kTypeInfo"
                        },
                        null,
                        {
                          "children": [
                            {
                              "end": 171,
                              "start": 169,
                              "tag": "SymbolIdentifier",
                              "text": "S0"
                            },
                            null
                          ],
                          "tag": "kUnqualifiedId"
                        },
                        {
                          "children": [
                            null
                          ],
                          "tag": "kUnpackedDimensions"
                        }
                      ],
                      "tag": "kParamType"
                    },
                    {
                      "children": [
                        {
                          "end": 173,
                          "start": 172,
                          "tag": "="
                        },
                        {
                          "children": [
                            {
                              "children": [
                                {
                                  "end": 175,
                                  "start": 174,
                                  "tag": "TK_DecNumber",
                                  "text": "2"
                                },
                                {
                                  "children": [
                                    {
                                      "end": 177,
                                      "start": 175,
                                      "tag": "TK_BinBase",
                                      "text": "'b"
                                    },
                                    {
                                      "end": 179,
                                      "start": 177,
                                      "tag": "TK_BinDigits",
                                      "text": "00"
                                    }
                                  ],
                                  "tag": "kBaseDigits"
                                }
                              ],
                              "tag": "kNumber"
                            }
                          ],
                          "tag": "kExpression"
                        },
                        null
                      ],
                      "tag": "kTrailingAssign"
                    },
                    {
                      "end": 180,
                      "start": 179,
                      "tag": ";"
                    }
                  ],
                  "tag": "kParamDeclaration"
                },
                {
                  "children": [
                    {
                      "end": 194,
                      "start": 185,
                      "tag": "parameter"
                    },
                    {
                      "children": [
                        {
                          "children": [
                            null,
                            null,
                            null
                          ],
                          "tag": "kTypeInfo"
                        },
                        null,
                        {
                          "children": [
                            {
                              "end": 197,
                              "start": 195,
                              "tag": "SymbolIdentifier",
                              "text": "S1"
                            },
                            null
                          ],
                          "tag": "kUnqualifiedId"
                        },
                        {
                          "children": [
                            null
                          ],
                          "tag": "kUnpackedDimensions"
                        }
                      ],
                      "tag": "kParamType"
                    },
                    {
                      "children": [
                        {
                          "end": 199,
                          "start": 198,
                          "tag": "="
                        },
                        {
                          "children": [
                            {
                              "children": [
                                {
                                  "end": 201,
                                  "start": 200,
                                  "tag": "TK_DecNumber",
                                  "text": "2"
                                },
                                {
                                  "children": [
                                    {
                                      "end": 203,
                                      "start": 201,
                                      "tag": "TK_BinBase",
                                      "text": "'b"
                                    },
                                    {
                                      "end": 205,
                                      "start": 203,
                                      "tag": "TK_BinDigits",
                                      "text": "01"
                                    }
                                  ],
                                  "tag": "kBaseDigits"
                                }
                              ],
                              "tag": "kNumber"
                            }
                          ],
                          "tag": "kExpression"
                        },
                        null
                      ],
                      "tag": "kTrailingAssign"
                    },
                    {
                      "end": 206,
                      "start": 205,
                      "tag": ";"
                    }
                  ],
                  "tag": "kParamDeclaration"
                },
                {
                  "children": [
                    {
                      "end": 220,
                      "start": 211,
                      "tag": "parameter"
                    },
                    {
                      "children": [
                        {
                          "children": [
                            null,
                            null,
                            null
                          ],
                          "tag": "kTypeInfo"
                        },
                        null,
                        {
                          "children": [
                            {
                              "end": 223,
                              "start": 221,
                              "tag": "SymbolIdentifier",
                              "text": "S2"
                            },
                            null
                          ],
                          "tag": "kUnqualifiedId"
                        },
                        {
                          "children": [
                            null
                          ],
                          "tag": "kUnpackedDimensions"
                        }
                      ],
                      "tag": "kParamType"
                    },
                    {
                      "children": [
                        {
                          "end": 225,
                          "start": 224,
                          "tag": "="
                        },
                        {
                          "children": [
                            {
                              "children": [
                                {
                                  "end": 227,
                                  "start": 226,
                                  "tag": "TK_DecNumber",
                                  "text": "2"
                                },
                                {
                                  "children": [
                                    {
                                      "end": 229,
                                      "start": 227,
                                      "tag": "TK_BinBase",
                                      "text": "'b"
                                    },
                                    {
                                      "end": 231,
                                      "start": 229,
                                      "tag": "TK_BinDigits",
                                      "text": "10"
                                    }
                                  ],
                                  "tag": "kBaseDigits"
                                }
                              ],
                              "tag": "kNumber"
                            }
                          ],
                          "tag": "kExpression"
                        },
                        null
                      ],
                      "tag": "kTrailingAssign"
                    },
                    {
                      "end": 232,
                      "start": 231,
                      "tag": ";"
                    }
                  ],
                  "tag": "kParamDeclaration"
                },
                {
                  "children": [
                    {
                      "end": 246,
                      "start": 237,
                      "tag": "parameter"
                    },
                    {
                      "children": [
                        {
                          "children": [
                            null,
                            null,
                            null
                          ],
                          "tag": "kTypeInfo"
                        },
                        null,
                        {
                          "children": [
                            {
                              "end": 249,
                              "start": 247,
                              "tag": "SymbolIdentifier",
                              "text": "S3"
                            },
                            null
                          ],
                          "tag": "kUnqualifiedId"
                        },
                        {
                          "children": [
                            null
                          ],
                          "tag": "kUnpackedDimensions"
                        }
                      ],
                      "tag": "kParamType"
                    },
                    {
                      "children": [
                        {
                          "end": 251,
                          "start": 250,
                          "tag": "="
                        },
                        {
                          "children": [
                            {
                              "children": [
                                {
                                  "end": 253,
                                  "start": 252,
                                  "tag": "TK_DecNumber",
                                  "text": "2"
                                },
                                {
                                  "children": [
                                    {
                                      "end": 255,
                                      "start": 253,
                                      "tag": "TK_BinBase",
                                      "text": "'b"
                                    },
                                    {
                                      "end": 257,
                                      "start": 255,
                                      "tag": "TK_BinDigits",
                                      "text": "11"
                                    }
                                  ],
                                  "tag": "kBaseDigits"
                                }
                              ],
                              "tag": "kNumber"
                            }
                          ],
                          "tag": "kExpression"
                        },
                        null
                      ],
                      "tag": "kTrailingAssign"
                    },
                    {
                      "end": 258,
                      "start": 257,
                      "tag": ";"
                    }
                  ],
                  "tag": "kParamDeclaration"
                },
                {
                  "children": [
                    {
                      "end": 270,
                      "start": 264,
                      "tag": "always"
                    },
                    {
                      "children": [
                        {
                          "children": [
                            {
                              "end": 272,
                              "start": 271,
                              "tag": "@"
                            },
                            {
                              "children": [
                                {
                                  "end": 273,
                                  "start": 272,
                                  "tag": "("
                                },
                                {
                                  "children": [
                                    {
                                      "children": [
                                        {
                                          "end": 280,
                                          "start": 273,
                                          "tag": "posedge"
                                        },
                                        {
                                          "children": [
                                            {
                                              "children": [
                                                {
                                                  "children": [
                                                    {
                                                      "children": [
                                                        {
                                                          "children": [
                                                            {
                                                              "end": 284,
                                                              "start": 281,
                                                              "tag": "SymbolIdentifier",
                                                              "text": "clk"
                                                            },
                                                            null
                                                          ],
                                                          "tag": "kUnqualifiedId"
                                                        }
                                                      ],
                                                      "tag": "kLocalRoot"
                                                    }
                                                  ],
                                                  "tag": "kReference"
                                                }
                                              ],
                                              "tag": "kReferenceCallBase"
                                            }
                                          ],
                                          "tag": "kExpression"
                                        }
                                      ],
                                      "tag": "kEventExpression"
                                    },
                                    {
                                      "end": 287,
                                      "start": 285,
                                      "tag": "or"
                                    },
                                    {
                                      "children": [
                                        {
                                          "end": 295,
                                          "start": 288,
                                          "tag": "posedge"
                                        },
                                        {
                                          "children": [
                                            {
                                              "children": [
                                                {
                                                  "children": [
                                                    {
                                                      "children": [
                                                        {
                                                          "children": [
                                                            {
                                                              "end": 301,
                                                              "start": 296,
                                                              "tag": "SymbolIdentifier",
                                                              "text": "reset"
                                                            },
                                                            null
                                                          ],
                                                          "tag": "kUnqualifiedId"
                                                        }
                                                      ],
                                                      "tag": "kLocalRoot"
                                                    }
                                                  ],
                                                  "tag": "kReference"
                                                }
                                              ],
                                              "tag": "kReferenceCallBase"
                                            }
                                          ],
                                          "tag": "kExpression"
                                        }
                                      ],
                                      "tag": "kEventExpression"
                                    }
                                  ],
                                  "tag": "kEventExpressionList"
                                },
                                {
                                  "end": 302,
                                  "start": 301,
                                  "tag": ")"
                                }
                              ],
                              "tag": "kParenGroup"
                            }
                          ],
                          "tag": "kEventControl"
                        },
                        {
                          "children": [
                            {
                              "children": [
                                {
                                  "end": 308,
                                  "start": 303,
                                  "tag": "begin"
                                },
                                null
                              ],
                              "tag": "kBegin"
                            },
                            {
                              "children": [
                                {
                                  "children": [
                                    {
                                      "children": [
                                        {
                                          "children": [
                                            null,
                                            {
                                              "end": 319,
                                              "start": 317,
                                              "tag": "if"
                                            },
                                            {
                                              "children": [
                                                {
                                                  "end": 321,
                                                  "start": 320,
                                                  "tag": "("
                                                },
                                                {
                                                  "children": [
                                                    {
                                                      "children": [
                                                        {
                                                          "children": [
                                                            {
                                                              "children": [
                                                                {
                                                                  "children": [
                                                                    {
                                                                      "end": 326,
                                                                      "start": 321,
                                                                      "tag": "SymbolIdentifier",
                                                                      "text": "reset"
                                                                    },
                                                                    null
                                                                  ],
                                                                  "tag": "kUnqualifiedId"
                                                                }
                                                              ],
                                                              "tag": "kLocalRoot"
                                                            }
                                                          ],
                                                          "tag": "kReference"
                                                        }
                                                      ],
                                                      "tag": "kReferenceCallBase"
                                                    }
                                                  ],
                                                  "tag": "kExpression"
                                                },
                                                {
                                                  "end": 327,
                                                  "start": 326,
                                                  "tag": ")"
                                                }
                                              ],
                                              "tag": "kParenGroup"
                                            }
                                          ],
                                          "tag": "kIfHeader"
                                        },
                                        {
                                          "children": [
                                            {
                                              "children": [
                                                {
                                                  "children": [
                                                    {
                                                      "end": 333,
                                                      "start": 328,
                                                      "tag": "begin"
                                                    },
                                                    null
                                                  ],
                                                  "tag": "kBegin"
                                                },
                                                {
                                                  "children": [
                                                    {
                                                      "children": [
                                                        {
                                                          "children": [
                                                            {
                                                              "children": [
                                                                {
                                                                  "children": [
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "children": [
                                                                            {
                                                                              "end": 351,
                                                                              "start": 346,
                                                                              "tag": "SymbolIdentifier",
                                                                              "text": "state"
                                                                            },
                                                                            null
                                                                          ],
                                                                          "tag": "kUnqualifiedId"
                                                                        }
                                                                      ],
                                                                      "tag": "kLocalRoot"
                                                                    }
                                                                  ],
                                                                  "tag": "kReference"
                                                                }
                                                              ],
                                                              "tag": "kReferenceCallBase"
                                                            }
                                                          ],
                                                          "tag": "kLPValue"
                                                        },
                                                        {
                                                          "end": 354,
                                                          "start": 352,
                                                          "tag": "<="
                                                        },
                                                        null,
                                                        {
                                                          "children": [
                                                            {
                                                              "children": [
                                                                {
                                                                  "children": [
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "children": [
                                                                            {
                                                                              "end": 357,
                                                                              "start": 355,
                                                                              "tag": "SymbolIdentifier",
                                                                              "text": "S0"
                                                                            },
                                                                            null
                                                                          ],
                                                                          "tag": "kUnqualifiedId"
                                                                        }
                                                                      ],
                                                                      "tag": "kLocalRoot"
                                                                    }
                                                                  ],
                                                                  "tag": "kReference"
                                                                }
                                                              ],
                                                              "tag": "kReferenceCallBase"
                                                            }
                                                          ],
                                                          "tag": "kExpression"
                                                        },
                                                        {
                                                          "end": 358,
                                                          "start": 357,
                                                          "tag": ";"
                                                        }
                                                      ],
                                                      "tag": "kNonblockingAssignmentStatement"
                                                    },
                                                    {
                                                      "children": [
                                                        {
                                                          "children": [
                                                            {
                                                              "children": [
                                                                {
                                                                  "children": [
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "children": [
                                                                            {
                                                                              "end": 384,
                                                                              "start": 371,
                                                                              "tag": "SymbolIdentifier",
                                                                              "text": "output_signal"
                                                                            },
                                                                            null
                                                                          ],
                                                                          "tag": "kUnqualifiedId"
                                                                        }
                                                                      ],
                                                                      "tag": "kLocalRoot"
                                                                    }
                                                                  ],
                                                                  "tag": "kReference"
                                                                }
                                                              ],
                                                              "tag": "kReferenceCallBase"
                                                            }
                                                          ],
                                                          "tag": "kLPValue"
                                                        },
                                                        {
                                                          "end": 387,
                                                          "start": 385,
                                                          "tag": "<="
                                                        },
                                                        null,
                                                        {
                                                          "children": [
                                                            {
                                                              "children": [
                                                                {
                                                                  "end": 389,
                                                                  "start": 388,
                                                                  "tag": "TK_DecNumber",
                                                                  "text": "0"
                                                                }
                                                              ],
                                                              "tag": "kNumber"
                                                            }
                                                          ],
                                                          "tag": "kExpression"
                                                        },
                                                        {
                                                          "end": 390,
                                                          "start": 389,
                                                          "tag": ";"
                                                        }
                                                      ],
                                                      "tag": "kNonblockingAssignmentStatement"
                                                    }
                                                  ],
                                                  "tag": "kBlockItemStatementList"
                                                },
                                                {
                                                  "children": [
                                                    {
                                                      "end": 402,
                                                      "start": 399,
                                                      "tag": "end"
                                                    },
                                                    null
                                                  ],
                                                  "tag": "kEnd"
                                                }
                                              ],
                                              "tag": "kSeqBlock"
                                            }
                                          ],
                                          "tag": "kIfBody"
                                        }
                                      ],
                                      "tag": "kIfClause"
                                    },
                                    {
                                      "children": [
                                        {
                                          "end": 407,
                                          "start": 403,
                                          "tag": "else"
                                        },
                                        {
                                          "children": [
                                            {
                                              "children": [
                                                {
                                                  "children": [
                                                    {
                                                      "end": 413,
                                                      "start": 408,
                                                      "tag": "begin"
                                                    },
                                                    null
                                                  ],
                                                  "tag": "kBegin"
                                                },
                                                {
                                                  "children": [
                                                    {
                                                      "children": [
                                                        null,
                                                        {
                                                          "end": 430,
                                                          "start": 426,
                                                          "tag": "case"
                                                        },
                                                        {
                                                          "children": [
                                                            {
                                                              "end": 432,
                                                              "start": 431,
                                                              "tag": "("
                                                            },
                                                            {
                                                              "children": [
                                                                {
                                                                  "children": [
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "children": [
                                                                            {
                                                                              "children": [
                                                                                {
                                                                                  "end": 437,
                                                                                  "start": 432,
                                                                                  "tag": "SymbolIdentifier",
                                                                                  "text": "state"
                                                                                },
                                                                                null
                                                                              ],
                                                                              "tag": "kUnqualifiedId"
                                                                            }
                                                                          ],
                                                                          "tag": "kLocalRoot"
                                                                        }
                                                                      ],
                                                                      "tag": "kReference"
                                                                    }
                                                                  ],
                                                                  "tag": "kReferenceCallBase"
                                                                }
                                                              ],
                                                              "tag": "kExpression"
                                                            },
                                                            {
                                                              "end": 438,
                                                              "start": 437,
                                                              "tag": ")"
                                                            }
                                                          ],
                                                          "tag": "kParenGroup"
                                                        },
                                                        {
                                                          "children": [
                                                            {
                                                              "children": [
                                                                {
                                                                  "children": [
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "children": [
                                                                            {
                                                                              "children": [
                                                                                {
                                                                                  "children": [
                                                                                    {
                                                                                      "children": [
                                                                                        {
                                                                                          "end": 457,
                                                                                          "start": 455,
                                                                                          "tag": "SymbolIdentifier",
                                                                                          "text": "S0"
                                                                                        },
                                                                                        null
                                                                                      ],
                                                                                      "tag": "kUnqualifiedId"
                                                                                    }
                                                                                  ],
                                                                                  "tag": "kLocalRoot"
                                                                                }
                                                                              ],
                                                                              "tag": "kReference"
                                                                            }
                                                                          ],
                                                                          "tag": "kReferenceCallBase"
                                                                        }
                                                                      ],
                                                                      "tag": "kExpression"
                                                                    }
                                                                  ],
                                                                  "tag": "kExpressionList"
                                                                },
                                                                {
                                                                  "end": 458,
                                                                  "start": 457,
                                                                  "tag": ":"
                                                                },
                                                                {
                                                                  "children": [
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "end": 464,
                                                                          "start": 459,
                                                                          "tag": "begin"
                                                                        },
                                                                        null
                                                                      ],
                                                                      "tag": "kBegin"
                                                                    },
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "children": [
                                                                            {
                                                                              "children": [
                                                                                {
                                                                                  "children": [
                                                                                    null,
                                                                                    {
                                                                                      "end": 487,
                                                                                      "start": 485,
                                                                                      "tag": "if"
                                                                                    },
                                                                                    {
                                                                                      "children": [
                                                                                        {
                                                                                          "end": 489,
                                                                                          "start": 488,
                                                                                          "tag": "("
                                                                                        },
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "children": [
                                                                                                {
                                                                                                  "children": [
                                                                                                    {
                                                                                                      "children": [
                                                                                                        {
                                                                                                          "children": [
                                                                                                            {
                                                                                                              "end": 498,
                                                                                                              "start": 489,
                                                                                                              "tag": "SymbolIdentifier",
                                                                                                              "text": "input_bit"
                                                                                                            },
                                                                                                            null
                                                                                                          ],
                                                                                                          "tag": "kUnqualifiedId"
                                                                                                        }
                                                                                                      ],
                                                                                                      "tag": "kLocalRoot"
                                                                                                    }
                                                                                                  ],
                                                                                                  "tag": "kReference"
                                                                                                }
                                                                                              ],
                                                                                              "tag": "kReferenceCallBase"
                                                                                            }
                                                                                          ],
                                                                                          "tag": "kExpression"
                                                                                        },
                                                                                        {
                                                                                          "end": 499,
                                                                                          "start": 498,
                                                                                          "tag": ")"
                                                                                        }
                                                                                      ],
                                                                                      "tag": "kParenGroup"
                                                                                    }
                                                                                  ],
                                                                                  "tag": "kIfHeader"
                                                                                },
                                                                                {
                                                                                  "children": [
                                                                                    {
                                                                                      "children": [
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "end": 505,
                                                                                              "start": 500,
                                                                                              "tag": "begin"
                                                                                            },
                                                                                            null
                                                                                          ],
                                                                                          "tag": "kBegin"
                                                                                        },
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "children": [
                                                                                                {
                                                                                                  "children": [
                                                                                                    {
                                                                                                      "children": [
                                                                                                        {
                                                                                                          "children": [
                                                                                                            {
                                                                                                              "children": [
                                                                                                                {
                                                                                                                  "children": [
                                                                                                                    {
                                                                                                                      "end": 535,
                                                                                                                      "start": 530,
                                                                                                                      "tag": "SymbolIdentifier",
                                                                                                                      "text": "state"
                                                                                                                    },
                                                                                                                    null
                                                                                                                  ],
                                                                                                                  "tag": "kUnqualifiedId"
                                                                                                                }
                                                                                                              ],
                                                                                                              "tag": "kLocalRoot"
                                                                                                            }
                                                                                                          ],
                                                                                                          "tag": "kReference"
                                                                                                        }
                                                                                                      ],
                                                                                                      "tag": "kReferenceCallBase"
                                                                                                    }
                                                                                                  ],
                                                                                                  "tag": "kLPValue"
                                                                                                },
                                                                                                {
                                                                                                  "end": 538,
                                                                                                  "start": 536,
                                                                                                  "tag": "<="
                                                                                                },
                                                                                                null,
                                                                                                {
                                                                                                  "children": [
                                                                                                    {
                                                                                                      "children": [
                                                                                                        {
                                                                                                          "children": [
                                                                                                            {
                                                                                                              "children": [
                                                                                                                {
                                                                                                                  "children": [
                                                                                                                    {
                                                                                                                      "end": 541,
                                                                                                                      "start": 539,
                                                                                                                      "tag": "SymbolIdentifier",
                                                                                                                      "text": "S1"
                                                                                                                    },
                                                                                                                    null
                                                                                                                  ],
                                                                                                                  "tag": "kUnqualifiedId"
                                                                                                                }
                                                                                                              ],
                                                                                                              "tag": "kLocalRoot"
                                                                                                            }
                                                                                                          ],
                                                                                                          "tag": "kReference"
                                                                                                        }
                                                                                                      ],
                                                                                                      "tag": "kReferenceCallBase"
                                                                                                    }
                                                                                                  ],
                                                                                                  "tag": "kExpression"
                                                                                                },
                                                                                                {
                                                                                                  "end": 542,
                                                                                                  "start": 541,
                                                                                                  "tag": ";"
                                                                                                }
                                                                                              ],
                                                                                              "tag": "kNonblockingAssignmentStatement"
                                                                                            }
                                                                                          ],
                                                                                          "tag": "kBlockItemStatementList"
                                                                                        },
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "end": 566,
                                                                                              "start": 563,
                                                                                              "tag": "end"
                                                                                            },
                                                                                            null
                                                                                          ],
                                                                                          "tag": "kEnd"
                                                                                        }
                                                                                      ],
                                                                                      "tag": "kSeqBlock"
                                                                                    }
                                                                                  ],
                                                                                  "tag": "kIfBody"
                                                                                }
                                                                              ],
                                                                              "tag": "kIfClause"
                                                                            },
                                                                            {
                                                                              "children": [
                                                                                {
                                                                                  "end": 571,
                                                                                  "start": 567,
                                                                                  "tag": "else"
                                                                                },
                                                                                {
                                                                                  "children": [
                                                                                    {
                                                                                      "children": [
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "end": 577,
                                                                                              "start": 572,
                                                                                              "tag": "begin"
                                                                                            },
                                                                                            null
                                                                                          ],
                                                                                          "tag": "kBegin"
                                                                                        },
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "children": [
                                                                                                {
                                                                                                  "children": [
                                                                                                    {
                                                                                                      "children": [
                                                                                                        {
                                                                                                          "children": [
                                                                                                            {
                                                                                                              "children": [
                                                                                                                {
                                                                                                                  "children": [
                                                                                                                    {
                                                                                                                      "end": 607,
                                                                                                                      "start": 602,
                                                                                                                      "tag": "SymbolIdentifier",
                                                                                                                      "text": "state"
                                                                                                                    },
                                                                                                                    null
                                                                                                                  ],
                                                                                                                  "tag": "kUnqualifiedId"
                                                                                                                }
                                                                                                              ],
                                                                                                              "tag": "kLocalRoot"
                                                                                                            }
                                                                                                          ],
                                                                                                          "tag": "kReference"
                                                                                                        }
                                                                                                      ],
                                                                                                      "tag": "kReferenceCallBase"
                                                                                                    }
                                                                                                  ],
                                                                                                  "tag": "kLPValue"
                                                                                                },
                                                                                                {
                                                                                                  "end": 610,
                                                                                                  "start": 608,
                                                                                                  "tag": "<="
                                                                                                },
                                                                                                null,
                                                                                                {
                                                                                                  "children": [
                                                                                                    {
                                                                                                      "children": [
                                                                                                        {
                                                                                                          "children": [
                                                                                                            {
                                                                                                              "children": [
                                                                                                                {
                                                                                                                  "children": [
                                                                                                                    {
                                                                                                                      "end": 613,
                                                                                                                      "start": 611,
                                                                                                                      "tag": "SymbolIdentifier",
                                                                                                                      "text": "S0"
                                                                                                                    },
                                                                                                                    null
                                                                                                                  ],
                                                                                                                  "tag": "kUnqualifiedId"
                                                                                                                }
                                                                                                              ],
                                                                                                              "tag": "kLocalRoot"
                                                                                                            }
                                                                                                          ],
                                                                                                          "tag": "kReference"
                                                                                                        }
                                                                                                      ],
                                                                                                      "tag": "kReferenceCallBase"
                                                                                                    }
                                                                                                  ],
                                                                                                  "tag": "kExpression"
                                                                                                },
                                                                                                {
                                                                                                  "end": 614,
                                                                                                  "start": 613,
                                                                                                  "tag": ";"
                                                                                                }
                                                                                              ],
                                                                                              "tag": "kNonblockingAssignmentStatement"
                                                                                            }
                                                                                          ],
                                                                                          "tag": "kBlockItemStatementList"
                                                                                        },
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "end": 638,
                                                                                              "start": 635,
                                                                                              "tag": "end"
                                                                                            },
                                                                                            null
                                                                                          ],
                                                                                          "tag": "kEnd"
                                                                                        }
                                                                                      ],
                                                                                      "tag": "kSeqBlock"
                                                                                    }
                                                                                  ],
                                                                                  "tag": "kElseBody"
                                                                                }
                                                                              ],
                                                                              "tag": "kElseClause"
                                                                            }
                                                                          ],
                                                                          "tag": "kConditionalStatement"
                                                                        }
                                                                      ],
                                                                      "tag": "kBlockItemStatementList"
                                                                    },
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "end": 658,
                                                                          "start": 655,
                                                                          "tag": "end"
                                                                        },
                                                                        null
                                                                      ],
                                                                      "tag": "kEnd"
                                                                    }
                                                                  ],
                                                                  "tag": "kSeqBlock"
                                                                }
                                                              ],
                                                              "tag": "kCaseItem"
                                                            },
                                                            {
                                                              "children": [
                                                                {
                                                                  "children": [
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "children": [
                                                                            {
                                                                              "children": [
                                                                                {
                                                                                  "children": [
                                                                                    {
                                                                                      "children": [
                                                                                        {
                                                                                          "end": 677,
                                                                                          "start": 675,
                                                                                          "tag": "SymbolIdentifier",
                                                                                          "text": "S1"
                                                                                        },
                                                                                        null
                                                                                      ],
                                                                                      "tag": "kUnqualifiedId"
                                                                                    }
                                                                                  ],
                                                                                  "tag": "kLocalRoot"
                                                                                }
                                                                              ],
                                                                              "tag": "kReference"
                                                                            }
                                                                          ],
                                                                          "tag": "kReferenceCallBase"
                                                                        }
                                                                      ],
                                                                      "tag": "kExpression"
                                                                    }
                                                                  ],
                                                                  "tag": "kExpressionList"
                                                                },
                                                                {
                                                                  "end": 678,
                                                                  "start": 677,
                                                                  "tag": ":"
                                                                },
                                                                {
                                                                  "children": [
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "end": 684,
                                                                          "start": 679,
                                                                          "tag": "begin"
                                                                        },
                                                                        null
                                                                      ],
                                                                      "tag": "kBegin"
                                                                    },
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "children": [
                                                                            {
                                                                              "children": [
                                                                                {
                                                                                  "children": [
                                                                                    null,
                                                                                    {
                                                                                      "end": 707,
                                                                                      "start": 705,
                                                                                      "tag": "if"
                                                                                    },
                                                                                    {
                                                                                      "children": [
                                                                                        {
                                                                                          "end": 709,
                                                                                          "start": 708,
                                                                                          "tag": "("
                                                                                        },
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "children": [
                                                                                                {
                                                                                                  "children": [
                                                                                                    {
                                                                                                      "children": [
                                                                                                        {
                                                                                                          "children": [
                                                                                                            {
                                                                                                              "end": 718,
                                                                                                              "start": 709,
                                                                                                              "tag": "SymbolIdentifier",
                                                                                                              "text": "input_bit"
                                                                                                            },
                                                                                                            null
                                                                                                          ],
                                                                                                          "tag": "kUnqualifiedId"
                                                                                                        }
                                                                                                      ],
                                                                                                      "tag": "kLocalRoot"
                                                                                                    }
                                                                                                  ],
                                                                                                  "tag": "kReference"
                                                                                                }
                                                                                              ],
                                                                                              "tag": "kReferenceCallBase"
                                                                                            }
                                                                                          ],
                                                                                          "tag": "kExpression"
                                                                                        },
                                                                                        {
                                                                                          "end": 719,
                                                                                          "start": 718,
                                                                                          "tag": ")"
                                                                                        }
                                                                                      ],
                                                                                      "tag": "kParenGroup"
                                                                                    }
                                                                                  ],
                                                                                  "tag": "kIfHeader"
                                                                                },
                                                                                {
                                                                                  "children": [
                                                                                    {
                                                                                      "children": [
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "end": 725,
                                                                                              "start": 720,
                                                                                              "tag": "begin"
                                                                                            },
                                                                                            null
                                                                                          ],
                                                                                          "tag": "kBegin"
                                                                                        },
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "children": [
                                                                                                {
                                                                                                  "children": [
                                                                                                    {
                                                                                                      "children": [
                                                                                                        {
                                                                                                          "children": [
                                                                                                            {
                                                                                                              "children": [
                                                                                                                {
                                                                                                                  "children": [
                                                                                                                    {
                                                                                                                      "end": 755,
                                                                                                                      "start": 750,
                                                                                                                      "tag": "SymbolIdentifier",
                                                                                                                      "text": "state"
                                                                                                                    },
                                                                                                                    null
                                                                                                                  ],
                                                                                                                  "tag": "kUnqualifiedId"
                                                                                                                }
                                                                                                              ],
                                                                                                              "tag": "kLocalRoot"
                                                                                                            }
                                                                                                          ],
                                                                                                          "tag": "kReference"
                                                                                                        }
                                                                                                      ],
                                                                                                      "tag": "kReferenceCallBase"
                                                                                                    }
                                                                                                  ],
                                                                                                  "tag": "kLPValue"
                                                                                                },
                                                                                                {
                                                                                                  "end": 758,
                                                                                                  "start": 756,
                                                                                                  "tag": "<="
                                                                                                },
                                                                                                null,
                                                                                                {
                                                                                                  "children": [
                                                                                                    {
                                                                                                      "children": [
                                                                                                        {
                                                                                                          "children": [
                                                                                                            {
                                                                                                              "children": [
                                                                                                                {
                                                                                                                  "children": [
                                                                                                                    {
                                                                                                                      "end": 761,
                                                                                                                      "start": 759,
                                                                                                                      "tag": "SymbolIdentifier",
                                                                                                                      "text": "S3"
                                                                                                                    },
                                                                                                                    null
                                                                                                                  ],
                                                                                                                  "tag": "kUnqualifiedId"
                                                                                                                }
                                                                                                              ],
                                                                                                              "tag": "kLocalRoot"
                                                                                                            }
                                                                                                          ],
                                                                                                          "tag": "kReference"
                                                                                                        }
                                                                                                      ],
                                                                                                      "tag": "kReferenceCallBase"
                                                                                                    }
                                                                                                  ],
                                                                                                  "tag": "kExpression"
                                                                                                },
                                                                                                {
                                                                                                  "end": 762,
                                                                                                  "start": 761,
                                                                                                  "tag": ";"
                                                                                                }
                                                                                              ],
                                                                                              "tag": "kNonblockingAssignmentStatement"
                                                                                            },
                                                                                            {
                                                                                              "children": [
                                                                                                {
                                                                                                  "children": [
                                                                                                    {
                                                                                                      "children": [
                                                                                                        {
                                                                                                          "children": [
                                                                                                            {
                                                                                                              "children": [
                                                                                                                {
                                                                                                                  "children": [
                                                                                                                    {
                                                                                                                      "end": 848,
                                                                                                                      "start": 835,
                                                                                                                      "tag": "SymbolIdentifier",
                                                                                                                      "text": "output_signal"
                                                                                                                    },
                                                                                                                    null
                                                                                                                  ],
                                                                                                                  "tag": "kUnqualifiedId"
                                                                                                                }
                                                                                                              ],
                                                                                                              "tag": "kLocalRoot"
                                                                                                            }
                                                                                                          ],
                                                                                                          "tag": "kReference"
                                                                                                        }
                                                                                                      ],
                                                                                                      "tag": "kReferenceCallBase"
                                                                                                    }
                                                                                                  ],
                                                                                                  "tag": "kLPValue"
                                                                                                },
                                                                                                {
                                                                                                  "end": 851,
                                                                                                  "start": 849,
                                                                                                  "tag": "<="
                                                                                                },
                                                                                                null,
                                                                                                {
                                                                                                  "children": [
                                                                                                    {
                                                                                                      "children": [
                                                                                                        {
                                                                                                          "end": 853,
                                                                                                          "start": 852,
                                                                                                          "tag": "TK_DecNumber",
                                                                                                          "text": "1"
                                                                                                        }
                                                                                                      ],
                                                                                                      "tag": "kNumber"
                                                                                                    }
                                                                                                  ],
                                                                                                  "tag": "kExpression"
                                                                                                },
                                                                                                {
                                                                                                  "end": 854,
                                                                                                  "start": 853,
                                                                                                  "tag": ";"
                                                                                                }
                                                                                              ],
                                                                                              "tag": "kNonblockingAssignmentStatement"
                                                                                            }
                                                                                          ],
                                                                                          "tag": "kBlockItemStatementList"
                                                                                        },
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "end": 904,
                                                                                              "start": 901,
                                                                                              "tag": "end"
                                                                                            },
                                                                                            null
                                                                                          ],
                                                                                          "tag": "kEnd"
                                                                                        }
                                                                                      ],
                                                                                      "tag": "kSeqBlock"
                                                                                    }
                                                                                  ],
                                                                                  "tag": "kIfBody"
                                                                                }
                                                                              ],
                                                                              "tag": "kIfClause"
                                                                            },
                                                                            {
                                                                              "children": [
                                                                                {
                                                                                  "end": 909,
                                                                                  "start": 905,
                                                                                  "tag": "else"
                                                                                },
                                                                                {
                                                                                  "children": [
                                                                                    {
                                                                                      "children": [
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "end": 915,
                                                                                              "start": 910,
                                                                                              "tag": "begin"
                                                                                            },
                                                                                            null
                                                                                          ],
                                                                                          "tag": "kBegin"
                                                                                        },
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "children": [
                                                                                                {
                                                                                                  "children": [
                                                                                                    {
                                                                                                      "children": [
                                                                                                        {
                                                                                                          "children": [
                                                                                                            {
                                                                                                              "children": [
                                                                                                                {
                                                                                                                  "children": [
                                                                                                                    {
                                                                                                                      "end": 945,
                                                                                                                      "start": 940,
                                                                                                                      "tag": "SymbolIdentifier",
                                                                                                                      "text": "state"
                                                                                                                    },
                                                                                                                    null
                                                                                                                  ],
                                                                                                                  "tag": "kUnqualifiedId"
                                                                                                                }
                                                                                                              ],
                                                                                                              "tag": "kLocalRoot"
                                                                                                            }
                                                                                                          ],
                                                                                                          "tag": "kReference"
                                                                                                        }
                                                                                                      ],
                                                                                                      "tag": "kReferenceCallBase"
                                                                                                    }
                                                                                                  ],
                                                                                                  "tag": "kLPValue"
                                                                                                },
                                                                                                {
                                                                                                  "end": 948,
                                                                                                  "start": 946,
                                                                                                  "tag": "<="
                                                                                                },
                                                                                                null,
                                                                                                {
                                                                                                  "children": [
                                                                                                    {
                                                                                                      "children": [
                                                                                                        {
                                                                                                          "children": [
                                                                                                            {
                                                                                                              "children": [
                                                                                                                {
                                                                                                                  "children": [
                                                                                                                    {
                                                                                                                      "end": 951,
                                                                                                                      "start": 949,
                                                                                                                      "tag": "SymbolIdentifier",
                                                                                                                      "text": "S2"
                                                                                                                    },
                                                                                                                    null
                                                                                                                  ],
                                                                                                                  "tag": "kUnqualifiedId"
                                                                                                                }
                                                                                                              ],
                                                                                                              "tag": "kLocalRoot"
                                                                                                            }
                                                                                                          ],
                                                                                                          "tag": "kReference"
                                                                                                        }
                                                                                                      ],
                                                                                                      "tag": "kReferenceCallBase"
                                                                                                    }
                                                                                                  ],
                                                                                                  "tag": "kExpression"
                                                                                                },
                                                                                                {
                                                                                                  "end": 952,
                                                                                                  "start": 951,
                                                                                                  "tag": ";"
                                                                                                }
                                                                                              ],
                                                                                              "tag": "kNonblockingAssignmentStatement"
                                                                                            }
                                                                                          ],
                                                                                          "tag": "kBlockItemStatementList"
                                                                                        },
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "end": 976,
                                                                                              "start": 973,
                                                                                              "tag": "end"
                                                                                            },
                                                                                            null
                                                                                          ],
                                                                                          "tag": "kEnd"
                                                                                        }
                                                                                      ],
                                                                                      "tag": "kSeqBlock"
                                                                                    }
                                                                                  ],
                                                                                  "tag": "kElseBody"
                                                                                }
                                                                              ],
                                                                              "tag": "kElseClause"
                                                                            }
                                                                          ],
                                                                          "tag": "kConditionalStatement"
                                                                        }
                                                                      ],
                                                                      "tag": "kBlockItemStatementList"
                                                                    },
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "end": 996,
                                                                          "start": 993,
                                                                          "tag": "end"
                                                                        },
                                                                        null
                                                                      ],
                                                                      "tag": "kEnd"
                                                                    }
                                                                  ],
                                                                  "tag": "kSeqBlock"
                                                                }
                                                              ],
                                                              "tag": "kCaseItem"
                                                            },
                                                            {
                                                              "children": [
                                                                {
                                                                  "children": [
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "children": [
                                                                            {
                                                                              "children": [
                                                                                {
                                                                                  "children": [
                                                                                    {
                                                                                      "children": [
                                                                                        {
                                                                                          "end": 1015,
                                                                                          "start": 1013,
                                                                                          "tag": "SymbolIdentifier",
                                                                                          "text": "S2"
                                                                                        },
                                                                                        null
                                                                                      ],
                                                                                      "tag": "kUnqualifiedId"
                                                                                    }
                                                                                  ],
                                                                                  "tag": "kLocalRoot"
                                                                                }
                                                                              ],
                                                                              "tag": "kReference"
                                                                            }
                                                                          ],
                                                                          "tag": "kReferenceCallBase"
                                                                        }
                                                                      ],
                                                                      "tag": "kExpression"
                                                                    }
                                                                  ],
                                                                  "tag": "kExpressionList"
                                                                },
                                                                {
                                                                  "end": 1016,
                                                                  "start": 1015,
                                                                  "tag": ":"
                                                                },
                                                                {
                                                                  "children": [
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "end": 1022,
                                                                          "start": 1017,
                                                                          "tag": "begin"
                                                                        },
                                                                        null
                                                                      ],
                                                                      "tag": "kBegin"
                                                                    },
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "children": [
                                                                            {
                                                                              "children": [
                                                                                {
                                                                                  "children": [
                                                                                    null,
                                                                                    {
                                                                                      "end": 1045,
                                                                                      "start": 1043,
                                                                                      "tag": "if"
                                                                                    },
                                                                                    {
                                                                                      "children": [
                                                                                        {
                                                                                          "end": 1047,
                                                                                          "start": 1046,
                                                                                          "tag": "("
                                                                                        },
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "children": [
                                                                                                {
                                                                                                  "children": [
                                                                                                    {
                                                                                                      "children": [
                                                                                                        {
                                                                                                          "children": [
                                                                                                            {
                                                                                                              "end": 1056,
                                                                                                              "start": 1047,
                                                                                                              "tag": "SymbolIdentifier",
                                                                                                              "text": "input_bit"
                                                                                                            },
                                                                                                            null
                                                                                                          ],
                                                                                                          "tag": "kUnqualifiedId"
                                                                                                        }
                                                                                                      ],
                                                                                                      "tag": "kLocalRoot"
                                                                                                    }
                                                                                                  ],
                                                                                                  "tag": "kReference"
                                                                                                }
                                                                                              ],
                                                                                              "tag": "kReferenceCallBase"
                                                                                            }
                                                                                          ],
                                                                                          "tag": "kExpression"
                                                                                        },
                                                                                        {
                                                                                          "end": 1057,
                                                                                          "start": 1056,
                                                                                          "tag": ")"
                                                                                        }
                                                                                      ],
                                                                                      "tag": "kParenGroup"
                                                                                    }
                                                                                  ],
                                                                                  "tag": "kIfHeader"
                                                                                },
                                                                                {
                                                                                  "children": [
                                                                                    {
                                                                                      "children": [
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "end": 1063,
                                                                                              "start": 1058,
                                                                                              "tag": "begin"
                                                                                            },
                                                                                            null
                                                                                          ],
                                                                                          "tag": "kBegin"
                                                                                        },
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "children": [
                                                                                                {
                                                                                                  "children": [
                                                                                                    {
                                                                                                      "children": [
                                                                                                        {
                                                                                                          "children": [
                                                                                                            {
                                                                                                              "children": [
                                                                                                                {
                                                                                                                  "children": [
                                                                                                                    {
                                                                                                                      "end": 1093,
                                                                                                                      "start": 1088,
                                                                                                                      "tag": "SymbolIdentifier",
                                                                                                                      "text": "state"
                                                                                                                    },
                                                                                                                    null
                                                                                                                  ],
                                                                                                                  "tag": "kUnqualifiedId"
                                                                                                                }
                                                                                                              ],
                                                                                                              "tag": "kLocalRoot"
                                                                                                            }
                                                                                                          ],
                                                                                                          "tag": "kReference"
                                                                                                        }
                                                                                                      ],
                                                                                                      "tag": "kReferenceCallBase"
                                                                                                    }
                                                                                                  ],
                                                                                                  "tag": "kLPValue"
                                                                                                },
                                                                                                {
                                                                                                  "end": 1096,
                                                                                                  "start": 1094,
                                                                                                  "tag": "<="
                                                                                                },
                                                                                                null,
                                                                                                {
                                                                                                  "children": [
                                                                                                    {
                                                                                                      "children": [
                                                                                                        {
                                                                                                          "children": [
                                                                                                            {
                                                                                                              "children": [
                                                                                                                {
                                                                                                                  "children": [
                                                                                                                    {
                                                                                                                      "end": 1099,
                                                                                                                      "start": 1097,
                                                                                                                      "tag": "SymbolIdentifier",
                                                                                                                      "text": "S3"
                                                                                                                    },
                                                                                                                    null
                                                                                                                  ],
                                                                                                                  "tag": "kUnqualifiedId"
                                                                                                                }
                                                                                                              ],
                                                                                                              "tag": "kLocalRoot"
                                                                                                            }
                                                                                                          ],
                                                                                                          "tag": "kReference"
                                                                                                        }
                                                                                                      ],
                                                                                                      "tag": "kReferenceCallBase"
                                                                                                    }
                                                                                                  ],
                                                                                                  "tag": "kExpression"
                                                                                                },
                                                                                                {
                                                                                                  "end": 1100,
                                                                                                  "start": 1099,
                                                                                                  "tag": ";"
                                                                                                }
                                                                                              ],
                                                                                              "tag": "kNonblockingAssignmentStatement"
                                                                                            }
                                                                                          ],
                                                                                          "tag": "kBlockItemStatementList"
                                                                                        },
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "end": 1124,
                                                                                              "start": 1121,
                                                                                              "tag": "end"
                                                                                            },
                                                                                            null
                                                                                          ],
                                                                                          "tag": "kEnd"
                                                                                        }
                                                                                      ],
                                                                                      "tag": "kSeqBlock"
                                                                                    }
                                                                                  ],
                                                                                  "tag": "kIfBody"
                                                                                }
                                                                              ],
                                                                              "tag": "kIfClause"
                                                                            },
                                                                            {
                                                                              "children": [
                                                                                {
                                                                                  "end": 1129,
                                                                                  "start": 1125,
                                                                                  "tag": "else"
                                                                                },
                                                                                {
                                                                                  "children": [
                                                                                    {
                                                                                      "children": [
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "end": 1135,
                                                                                              "start": 1130,
                                                                                              "tag": "begin"
                                                                                            },
                                                                                            null
                                                                                          ],
                                                                                          "tag": "kBegin"
                                                                                        },
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "children": [
                                                                                                {
                                                                                                  "children": [
                                                                                                    {
                                                                                                      "children": [
                                                                                                        {
                                                                                                          "children": [
                                                                                                            {
                                                                                                              "children": [
                                                                                                                {
                                                                                                                  "children": [
                                                                                                                    {
                                                                                                                      "end": 1165,
                                                                                                                      "start": 1160,
                                                                                                                      "tag": "SymbolIdentifier",
                                                                                                                      "text": "state"
                                                                                                                    },
                                                                                                                    null
                                                                                                                  ],
                                                                                                                  "tag": "kUnqualifiedId"
                                                                                                                }
                                                                                                              ],
                                                                                                              "tag": "kLocalRoot"
                                                                                                            }
                                                                                                          ],
                                                                                                          "tag": "kReference"
                                                                                                        }
                                                                                                      ],
                                                                                                      "tag": "kReferenceCallBase"
                                                                                                    }
                                                                                                  ],
                                                                                                  "tag": "kLPValue"
                                                                                                },
                                                                                                {
                                                                                                  "end": 1168,
                                                                                                  "start": 1166,
                                                                                                  "tag": "<="
                                                                                                },
                                                                                                null,
                                                                                                {
                                                                                                  "children": [
                                                                                                    {
                                                                                                      "children": [
                                                                                                        {
                                                                                                          "children": [
                                                                                                            {
                                                                                                              "children": [
                                                                                                                {
                                                                                                                  "children": [
                                                                                                                    {
                                                                                                                      "end": 1171,
                                                                                                                      "start": 1169,
                                                                                                                      "tag": "SymbolIdentifier",
                                                                                                                      "text": "S0"
                                                                                                                    },
                                                                                                                    null
                                                                                                                  ],
                                                                                                                  "tag": "kUnqualifiedId"
                                                                                                                }
                                                                                                              ],
                                                                                                              "tag": "kLocalRoot"
                                                                                                            }
                                                                                                          ],
                                                                                                          "tag": "kReference"
                                                                                                        }
                                                                                                      ],
                                                                                                      "tag": "kReferenceCallBase"
                                                                                                    }
                                                                                                  ],
                                                                                                  "tag": "kExpression"
                                                                                                },
                                                                                                {
                                                                                                  "end": 1172,
                                                                                                  "start": 1171,
                                                                                                  "tag": ";"
                                                                                                }
                                                                                              ],
                                                                                              "tag": "kNonblockingAssignmentStatement"
                                                                                            }
                                                                                          ],
                                                                                          "tag": "kBlockItemStatementList"
                                                                                        },
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "end": 1196,
                                                                                              "start": 1193,
                                                                                              "tag": "end"
                                                                                            },
                                                                                            null
                                                                                          ],
                                                                                          "tag": "kEnd"
                                                                                        }
                                                                                      ],
                                                                                      "tag": "kSeqBlock"
                                                                                    }
                                                                                  ],
                                                                                  "tag": "kElseBody"
                                                                                }
                                                                              ],
                                                                              "tag": "kElseClause"
                                                                            }
                                                                          ],
                                                                          "tag": "kConditionalStatement"
                                                                        }
                                                                      ],
                                                                      "tag": "kBlockItemStatementList"
                                                                    },
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "end": 1216,
                                                                          "start": 1213,
                                                                          "tag": "end"
                                                                        },
                                                                        null
                                                                      ],
                                                                      "tag": "kEnd"
                                                                    }
                                                                  ],
                                                                  "tag": "kSeqBlock"
                                                                }
                                                              ],
                                                              "tag": "kCaseItem"
                                                            },
                                                            {
                                                              "children": [
                                                                {
                                                                  "children": [
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "children": [
                                                                            {
                                                                              "children": [
                                                                                {
                                                                                  "children": [
                                                                                    {
                                                                                      "children": [
                                                                                        {
                                                                                          "end": 1235,
                                                                                          "start": 1233,
                                                                                          "tag": "SymbolIdentifier",
                                                                                          "text": "S3"
                                                                                        },
                                                                                        null
                                                                                      ],
                                                                                      "tag": "kUnqualifiedId"
                                                                                    }
                                                                                  ],
                                                                                  "tag": "kLocalRoot"
                                                                                }
                                                                              ],
                                                                              "tag": "kReference"
                                                                            }
                                                                          ],
                                                                          "tag": "kReferenceCallBase"
                                                                        }
                                                                      ],
                                                                      "tag": "kExpression"
                                                                    }
                                                                  ],
                                                                  "tag": "kExpressionList"
                                                                },
                                                                {
                                                                  "end": 1236,
                                                                  "start": 1235,
                                                                  "tag": ":"
                                                                },
                                                                {
                                                                  "children": [
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "end": 1242,
                                                                          "start": 1237,
                                                                          "tag": "begin"
                                                                        },
                                                                        null
                                                                      ],
                                                                      "tag": "kBegin"
                                                                    },
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "children": [
                                                                            {
                                                                              "children": [
                                                                                {
                                                                                  "children": [
                                                                                    {
                                                                                      "children": [
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "children": [
                                                                                                {
                                                                                                  "end": 1268,
                                                                                                  "start": 1263,
                                                                                                  "tag": "SymbolIdentifier",
                                                                                                  "text": "state"
                                                                                                },
                                                                                                null
                                                                                              ],
                                                                                              "tag": "kUnqualifiedId"
                                                                                            }
                                                                                          ],
                                                                                          "tag": "kLocalRoot"
                                                                                        }
                                                                                      ],
                                                                                      "tag": "kReference"
                                                                                    }
                                                                                  ],
                                                                                  "tag": "kReferenceCallBase"
                                                                                }
                                                                              ],
                                                                              "tag": "kLPValue"
                                                                            },
                                                                            {
                                                                              "end": 1271,
                                                                              "start": 1269,
                                                                              "tag": "<="
                                                                            },
                                                                            null,
                                                                            {
                                                                              "children": [
                                                                                {
                                                                                  "children": [
                                                                                    {
                                                                                      "children": [
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "children": [
                                                                                                {
                                                                                                  "end": 1274,
                                                                                                  "start": 1272,
                                                                                                  "tag": "SymbolIdentifier",
                                                                                                  "text": "S0"
                                                                                                },
                                                                                                null
                                                                                              ],
                                                                                              "tag": "kUnqualifiedId"
                                                                                            }
                                                                                          ],
                                                                                          "tag": "kLocalRoot"
                                                                                        }
                                                                                      ],
                                                                                      "tag": "kReference"
                                                                                    }
                                                                                  ],
                                                                                  "tag": "kReferenceCallBase"
                                                                                }
                                                                              ],
                                                                              "tag": "kExpression"
                                                                            },
                                                                            {
                                                                              "end": 1275,
                                                                              "start": 1274,
                                                                              "tag": ";"
                                                                            }
                                                                          ],
                                                                          "tag": "kNonblockingAssignmentStatement"
                                                                        }
                                                                      ],
                                                                      "tag": "kBlockItemStatementList"
                                                                    },
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "end": 1295,
                                                                          "start": 1292,
                                                                          "tag": "end"
                                                                        },
                                                                        null
                                                                      ],
                                                                      "tag": "kEnd"
                                                                    }
                                                                  ],
                                                                  "tag": "kSeqBlock"
                                                                }
                                                              ],
                                                              "tag": "kCaseItem"
                                                            },
                                                            {
                                                              "children": [
                                                                {
                                                                  "end": 1319,
                                                                  "start": 1312,
                                                                  "tag": "default"
                                                                },
                                                                {
                                                                  "end": 1320,
                                                                  "start": 1319,
                                                                  "tag": ":"
                                                                },
                                                                {
                                                                  "children": [
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "end": 1326,
                                                                          "start": 1321,
                                                                          "tag": "begin"
                                                                        },
                                                                        null
                                                                      ],
                                                                      "tag": "kBegin"
                                                                    },
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "children": [
                                                                            {
                                                                              "children": [
                                                                                {
                                                                                  "children": [
                                                                                    {
                                                                                      "children": [
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "children": [
                                                                                                {
                                                                                                  "end": 1352,
                                                                                                  "start": 1347,
                                                                                                  "tag": "SymbolIdentifier",
                                                                                                  "text": "state"
                                                                                                },
                                                                                                null
                                                                                              ],
                                                                                              "tag": "kUnqualifiedId"
                                                                                            }
                                                                                          ],
                                                                                          "tag": "kLocalRoot"
                                                                                        }
                                                                                      ],
                                                                                      "tag": "kReference"
                                                                                    }
                                                                                  ],
                                                                                  "tag": "kReferenceCallBase"
                                                                                }
                                                                              ],
                                                                              "tag": "kLPValue"
                                                                            },
                                                                            {
                                                                              "end": 1355,
                                                                              "start": 1353,
                                                                              "tag": "<="
                                                                            },
                                                                            null,
                                                                            {
                                                                              "children": [
                                                                                {
                                                                                  "children": [
                                                                                    {
                                                                                      "children": [
                                                                                        {
                                                                                          "children": [
                                                                                            {
                                                                                              "children": [
                                                                                                {
                                                                                                  "end": 1358,
                                                                                                  "start": 1356,
                                                                                                  "tag": "SymbolIdentifier",
                                                                                                  "text": "S0"
                                                                                                },
                                                                                                null
                                                                                              ],
                                                                                              "tag": "kUnqualifiedId"
                                                                                            }
                                                                                          ],
                                                                                          "tag": "kLocalRoot"
                                                                                        }
                                                                                      ],
                                                                                      "tag": "kReference"
                                                                                    }
                                                                                  ],
                                                                                  "tag": "kReferenceCallBase"
                                                                                }
                                                                              ],
                                                                              "tag": "kExpression"
                                                                            },
                                                                            {
                                                                              "end": 1359,
                                                                              "start": 1358,
                                                                              "tag": ";"
                                                                            }
                                                                          ],
                                                                          "tag": "kNonblockingAssignmentStatement"
                                                                        }
                                                                      ],
                                                                      "tag": "kBlockItemStatementList"
                                                                    },
                                                                    {
                                                                      "children": [
                                                                        {
                                                                          "end": 1379,
                                                                          "start": 1376,
                                                                          "tag": "end"
                                                                        },
                                                                        null
                                                                      ],
                                                                      "tag": "kEnd"
                                                                    }
                                                                  ],
                                                                  "tag": "kSeqBlock"
                                                                }
                                                              ],
                                                              "tag": "kDefaultItem"
                                                            }
                                                          ],
                                                          "tag": "kCaseItemList"
                                                        },
                                                        {
                                                          "end": 1399,
                                                          "start": 1392,
                                                          "tag": "endcase"
                                                        }
                                                      ],
                                                      "tag": "kCaseStatement"
                                                    }
                                                  ],
                                                  "tag": "kBlockItemStatementList"
                                                },
                                                {
                                                  "children": [
                                                    {
                                                      "end": 1411,
                                                      "start": 1408,
                                                      "tag": "end"
                                                    },
                                                    null
                                                  ],
                                                  "tag": "kEnd"
                                                }
                                              ],
                                              "tag": "kSeqBlock"
                                            }
                                          ],
                                          "tag": "kElseBody"
                                        }
                                      ],
                                      "tag": "kElseClause"
                                    }
                                  ],
                                  "tag": "kConditionalStatement"
                                }
                              ],
                              "tag": "kBlockItemStatementList"
                            },
                            {
                              "children": [
                                {
                                  "end": 1419,
                                  "start": 1416,
                                  "tag": "end"
                                },
                                null
                              ],
                              "tag": "kEnd"
                            }
                          ],
                          "tag": "kSeqBlock"
                        }
                      ],
                      "tag": "kProceduralTimingControlStatement"
                    }
                  ],
                  "tag": "kAlwaysStatement"
                }
              ],
              "tag": "kModuleItemList"
            },
            {
              "end": 1429,
              "start": 1420,
              "tag": "endmodule"
            },
            null
          ],
          "tag": "kModuleDeclaration"
        }
      ],
      "tag": "kDescriptionList"
    }
  }
}
