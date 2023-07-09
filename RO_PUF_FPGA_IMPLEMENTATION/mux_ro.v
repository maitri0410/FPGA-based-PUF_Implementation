module mux_ro(en1,din1,din2);
(*keep=1*)input en1;
(*keep=1*) output [7:0] din1,din2;
m_ro ro1(en1,din1[0]);
m_ro ro2(en1,din1[1]);
m_ro ro3(en1,din1[2]);
m_ro ro4(en1,din1[3]);
m_ro ro5(en1,din1[4]);
m_ro ro6(en1,din1[5]);
m_ro ro7(en1,din1[6]);
m_ro ro8(en1,din1[7]);

m_ro ro9(en1,din2[0]);
m_ro ro10(en1,din2[1]);
m_ro ro11(en1,din2[2]);
m_ro ro12(en1,din2[3]);
m_ro ro13(en1,din2[4]);
m_ro ro14(en1,din2[5]);
m_ro ro15(en1,din2[6]);
m_ro ro16(en1,din2[7]);
endmodule
