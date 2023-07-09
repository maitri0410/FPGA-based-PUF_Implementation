# PUF Implementation
Copyright (C) 2023 by Maitri Patel, Institute of Technology, Nirma University.

This Project is about PUF implementation on FPGA.The code here is based on Verilog HDL.Here ALtera DE2(cyclone II) FPGA boards are used for implementation.The Report of implemented stable RO PUF is also uploded here.

# What is a PUF?
Physical unclonable function (PUF) has recently been used to describe key creation and storage. PUF delivers a greater level of protection without the need of persistent power by keeping secrets in its special intrinsic physical properties that are arbitrarily defined by fabrication variances, such as the subtle difference in the delays of two wires with equal lengths at the design phase.

# Why we need a PUF?
Device authentication poses a significant challenge in cryptography as it requires each device to store a unique secret key in non-volatile memory on the chip. However, this approach becomes difficult, expensive, and vulnerable to hacking attacks in devices such as RFIDs and smart cards. To address this issue, it is necessary to employ secure FPGA-based designs and applications to prevent tampering attempts. Alternatively,tamper-proof memory can be used, but it is costlier, more complex, and consumes more energy. Ensuring the security of cryptographic keys on computing systems is crucial for maintaining overall security, privacy protection, and reliable computing. 

# Arbiter PUF structure
![image](https://github.com/maitri0410/FPGA-based-PUF_Implementation/assets/84768578/d0c4562f-b4c6-449a-b23e-7f8798db4da7)
