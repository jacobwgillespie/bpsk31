---
title: About PSK31
description: >
  About the PSK31 operating mode, a brief history, the difference between BPSK31 and QPSK31, and the PSK31 specification.
---

## About PSK31

PSK31 is a digital communication mode for amateur radio. It is one of the most common and easy-to-use digital modes as a PSK31 station needs only to consist of an SSB transceiver, an antenna, and a soundcard equipped PC.

## Brief history of PSK31

PSK31 was created by Peter Martinez, G3PLX, in the mid-'90s. In the early stages, PSK31 signals were sent using specialized DSP platforms. However, in 1999, Peter released software that allowed PSK31 to be sent and received using a computer soundcard. Due in part to the widespread availability of such a setup, PSK31 has become one of the most popular digital modes in amateur radio.

### How PSK31 Works

PSK31 signals consist of changing audio tones to convey the transmission content. Individual characters are represented by a binary sequence of 1′s and 0′s, the sequence being determined by a system called Varicode. The number of bits per character varies based on how commonly the letter is used, an "e" being represented by 11, thus achieving greater transmission speed.

The bits, 1′s and 0′s, are transmitted my phase-shifting an audio tone, hence the name Phase Shift Keying (PSK). The 31 in PSK31 refers to the speed at which data is sent; in this mode, at about 31 bits-per-second.

PSK31 archives its weak-signal performance as a result of two factors. First, a PSK31 signal is narrow, being about 31 Hz wide. Second, the structure of Varicode allows the receiving computer to anticipate the times for each data bit. These factors combine to make PSK31 one of the most popular and high performance digital modes.

### What's the "b" in BPSK31?

The "b" in BSPK31 stands for binary. This refers to the most common form of PSK31, which sends two channels of data with a transmission. There is also another flavor, QPSK31, which adds two additional channels for error correction, but it is far less popular than BSPK31.<br>
PSK31 is a digital communication mode for amateur radio. It is one of the most common and easy-to-use digital modes as a PSK31 station needs only to consist of an SSB transceiver, an antenna, and a soundcard equipped PC.

## PSK31 Specification

### PSK31 Alphabet

<div class="alphabet">
  <div class="letter"><div class="ascii">NUL</div><div class="code">1010101011</div></div>
  <div class="letter"><div class="ascii">SOH</div><div class="code">1011011011</div></div>
  <div class="letter"><div class="ascii">STX</div><div class="code">1011101101</div></div>
  <div class="letter"><div class="ascii">ETX</div><div class="code">1101110111</div></div>
  <div class="letter"><div class="ascii">EOT</div><div class="code">1011101011</div></div>
  <div class="letter"><div class="ascii">ENQ</div><div class="code">1101011111</div></div>
  <div class="letter"><div class="ascii">ACK</div><div class="code">1011101111</div></div>
  <div class="letter"><div class="ascii">BEL</div><div class="code">1011111101</div></div>
  <div class="letter"><div class="ascii">BS</div><div class="code">1011111111</div></div>
  <div class="letter"><div class="ascii">HT</div><div class="code">11101111</div></div>
  <div class="letter"><div class="ascii">LF</div><div class="code">11101</div></div>
  <div class="letter"><div class="ascii">VT</div><div class="code">1101101111</div></div>
  <div class="letter"><div class="ascii">FF</div><div class="code">1011011101</div></div>
  <div class="letter"><div class="ascii">CR</div><div class="code">11111</div></div>
  <div class="letter"><div class="ascii">SO</div><div class="code">1101110101</div></div>
  <div class="letter"><div class="ascii">SI</div><div class="code">1110101011</div></div>
  <div class="letter"><div class="ascii">DLE</div><div class="code">1011110111</div></div>
  <div class="letter"><div class="ascii">DC1</div><div class="code">1011110101</div></div>
  <div class="letter"><div class="ascii">DC2</div><div class="code">1110101101</div></div>
  <div class="letter"><div class="ascii">DC3</div><div class="code">1110101111</div></div>
  <div class="letter"><div class="ascii">DC4</div><div class="code">1101011011</div></div>
  <div class="letter"><div class="ascii">NAK</div><div class="code">1101101011</div></div>
  <div class="letter"><div class="ascii">SYN</div><div class="code">1101101101</div></div>
  <div class="letter"><div class="ascii">ETB</div><div class="code">1101010111</div></div>
  <div class="letter"><div class="ascii">CAN</div><div class="code">1101111011</div></div>
  <div class="letter"><div class="ascii">EM</div><div class="code">1101111101</div></div>
  <div class="letter"><div class="ascii">SUB</div><div class="code">1110110111</div></div>
  <div class="letter"><div class="ascii">ESC</div><div class="code">1101010101</div></div>
  <div class="letter"><div class="ascii">FS</div><div class="code">1101011101</div></div>
  <div class="letter"><div class="ascii">GS</div><div class="code">1110111011</div></div>
  <div class="letter"><div class="ascii">RS</div><div class="code">1011111011</div></div>
  <div class="letter"><div class="ascii">US</div><div class="code">1101111111</div></div>
  <div class="letter"><div class="ascii">SP</div><div class="code">1</div></div>
  <div class="letter"><div class="ascii">!</div><div class="code">111111111</div></div>
  <div class="letter"><div class="ascii">"</div><div class="code">101011111</div></div>
  <div class="letter"><div class="ascii">#</div><div class="code">111110101</div></div>
  <div class="letter"><div class="ascii">$</div><div class="code">111011011</div></div>
  <div class="letter"><div class="ascii">%</div><div class="code">1011010101</div></div>
  <div class="letter"><div class="ascii">&</div><div class="code">1010111011</div></div>
  <div class="letter"><div class="ascii">'</div><div class="code">101111111</div></div>
  <div class="letter"><div class="ascii">(</div><div class="code">11111011</div></div>
  <div class="letter"><div class="ascii">)</div><div class="code">11110111</div></div>
  <div class="letter"><div class="ascii">*</div><div class="code">101101111</div></div>
  <div class="letter"><div class="ascii">+</div><div class="code">111011111</div></div>
  <div class="letter"><div class="ascii">,</div><div class="code">1110101</div></div>
  <div class="letter"><div class="ascii">-</div><div class="code">110101</div></div>
  <div class="letter"><div class="ascii">.</div><div class="code">1010111</div></div>
  <div class="letter"><div class="ascii">/</div><div class="code">110101111</div></div>
  <div class="letter"><div class="ascii">0</div><div class="code">10110111</div></div>
  <div class="letter"><div class="ascii">1</div><div class="code">10111101</div></div>
  <div class="letter"><div class="ascii">2</div><div class="code">11101101</div></div>
  <div class="letter"><div class="ascii">3</div><div class="code">11111111</div></div>
  <div class="letter"><div class="ascii">4</div><div class="code">101110111</div></div>
  <div class="letter"><div class="ascii">5</div><div class="code">101011011</div></div>
  <div class="letter"><div class="ascii">6</div><div class="code">101101011</div></div>
  <div class="letter"><div class="ascii">7</div><div class="code">110101101</div></div>
  <div class="letter"><div class="ascii">8</div><div class="code">110101011</div></div>
  <div class="letter"><div class="ascii">9</div><div class="code">110110111</div></div>
  <div class="letter"><div class="ascii">:</div><div class="code">11110101</div></div>
  <div class="letter"><div class="ascii">;</div><div class="code">110111101</div></div>
  <div class="letter"><div class="ascii"><</div><div class="code">111101101</div></div>
  <div class="letter"><div class="ascii">=</div><div class="code">1010101</div></div>
  <div class="letter"><div class="ascii">></div><div class="code">111010111</div></div>
  <div class="letter"><div class="ascii">?</div><div class="code">1010101111</div></div>
  <div class="letter"><div class="ascii">@</div><div class="code">1010111101</div></div>
  <div class="letter"><div class="ascii">A</div><div class="code">1111101</div></div>
  <div class="letter"><div class="ascii">B</div><div class="code">11101011</div></div>
  <div class="letter"><div class="ascii">C</div><div class="code">10101101</div></div>
  <div class="letter"><div class="ascii">D</div><div class="code">10110101</div></div>
  <div class="letter"><div class="ascii">E</div><div class="code">1110111</div></div>
  <div class="letter"><div class="ascii">F</div><div class="code">11011011</div></div>
  <div class="letter"><div class="ascii">G</div><div class="code">11111101</div></div>
  <div class="letter"><div class="ascii">H</div><div class="code">101010101</div></div>
  <div class="letter"><div class="ascii">I</div><div class="code">1111111</div></div>
  <div class="letter"><div class="ascii">J</div><div class="code">111111101</div></div>
  <div class="letter"><div class="ascii">K</div><div class="code">101111101</div></div>
  <div class="letter"><div class="ascii">L</div><div class="code">11010111</div></div>
  <div class="letter"><div class="ascii">M</div><div class="code">10111011</div></div>
  <div class="letter"><div class="ascii">N</div><div class="code">11011101</div></div>
  <div class="letter"><div class="ascii">O</div><div class="code">10101011</div></div>
  <div class="letter"><div class="ascii">P</div><div class="code">11010101</div></div>
  <div class="letter"><div class="ascii">Q</div><div class="code">111011101</div></div>
  <div class="letter"><div class="ascii">R</div><div class="code">10101111</div></div>
  <div class="letter"><div class="ascii">S</div><div class="code">1101111</div></div>
  <div class="letter"><div class="ascii">T</div><div class="code">1101101</div></div>
  <div class="letter"><div class="ascii">U</div><div class="code">101010111</div></div>
  <div class="letter"><div class="ascii">V</div><div class="code">110110101</div></div>
  <div class="letter"><div class="ascii">W</div><div class="code">101011101</div></div>
  <div class="letter"><div class="ascii">X</div><div class="code">101110101</div></div>
  <div class="letter"><div class="ascii">Y</div><div class="code">101111011</div></div>
  <div class="letter"><div class="ascii">Z</div><div class="code">1010101101</div></div>
  <div class="letter"><div class="ascii">[</div><div class="code">111110111</div></div>
  <div class="letter"><div class="ascii">\</div><div class="code">111101111</div></div>
  <div class="letter"><div class="ascii">]</div><div class="code">111111011</div></div>
  <div class="letter"><div class="ascii">^</div><div class="code">1010111111</div></div>
  <div class="letter"><div class="ascii">_</div><div class="code">101101101</div></div>
  <div class="letter"><div class="ascii">`</div><div class="code">1011011111</div></div>
  <div class="letter"><div class="ascii">a</div><div class="code">1011</div></div>
  <div class="letter"><div class="ascii">b</div><div class="code">1011111</div></div>
  <div class="letter"><div class="ascii">c</div><div class="code">101111</div></div>
  <div class="letter"><div class="ascii">d</div><div class="code">101101</div></div>
  <div class="letter"><div class="ascii">e</div><div class="code">11</div></div>
  <div class="letter"><div class="ascii">f</div><div class="code">111101</div></div>
  <div class="letter"><div class="ascii">g</div><div class="code">1011011</div></div>
  <div class="letter"><div class="ascii">h</div><div class="code">101011</div></div>
  <div class="letter"><div class="ascii">i</div><div class="code">1101</div></div>
  <div class="letter"><div class="ascii">j</div><div class="code">111101011</div></div>
  <div class="letter"><div class="ascii">k</div><div class="code">10111111</div></div>
  <div class="letter"><div class="ascii">l</div><div class="code">11011</div></div>
  <div class="letter"><div class="ascii">m</div><div class="code">111011</div></div>
  <div class="letter"><div class="ascii">n</div><div class="code">1111</div></div>
  <div class="letter"><div class="ascii">o</div><div class="code">111</div></div>
  <div class="letter"><div class="ascii">p</div><div class="code">111111</div></div>
  <div class="letter"><div class="ascii">q</div><div class="code">110111111</div></div>
  <div class="letter"><div class="ascii">r</div><div class="code">10101</div></div>
  <div class="letter"><div class="ascii">s</div><div class="code">10111</div></div>
  <div class="letter"><div class="ascii">t</div><div class="code">101</div></div>
  <div class="letter"><div class="ascii">u</div><div class="code">110111</div></div>
  <div class="letter"><div class="ascii">v</div><div class="code">1111011</div></div>
  <div class="letter"><div class="ascii">w</div><div class="code">1101011</div></div>
  <div class="letter"><div class="ascii">x</div><div class="code">11011111</div></div>
  <div class="letter"><div class="ascii">y</div><div class="code">1011101</div></div>
  <div class="letter"><div class="ascii">z</div><div class="code">111010101</div></div>
  <div class="letter"><div class="ascii">{</div><div class="code">1010110111</div></div>
  <div class="letter"><div class="ascii">|</div><div class="code">110111011</div></div>
  <div class="letter"><div class="ascii">}</div><div class="code">1010110101</div></div>
  <div class="letter"><div class="ascii">~</div><div class="code">1011010111</div></div>
  <div class="letter"><div class="ascii">DEL</div><div class="code">1110110101</div></div>
</div>
