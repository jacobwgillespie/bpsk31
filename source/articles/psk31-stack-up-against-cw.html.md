---
title: How does PSK31 Stack Up Against CW in a Noisy Channel
description: PSK31 is really a lot of fun to use and rarely are we constrained to QSOs with SNRs less than 12 dB on our most popular HF bands.
---

# How does PSK31 Stack Up Against CW in a Noisy Channel
### By Jim Frazier, KC5RUO

<amp-image-lightbox id="lightbox01" layout="nodisplay"></amp-image-lightbox>

<figure class="img-right">
<amp-img on="tap:lightbox01" role="button" tabindex="0" src="home04.jpg" width="1440" height="810" layout="responsive"></amp-img>
</figure>

One of my special joys these days is listening to the ARRL PODCASTS hosted by Steve Ford and Joel Hallas. One PODCAST in particular, *Does CW Really Get Through When Nothing Else Can?* <sup>1</sup> resonated with me.  As an enthusiastic Binary Phase Shift Key 31 (PSK31) operator the PODCAST left me wondering how does PSK31 stack up against CW in the noisy channel.  As Joel Hallas pointed out in that broadcast, "when communications can't get through it is usually about Signal to Noise ratio (SNR); that is, not having a strong enough signal when compared to the noise". Does PSK31 rival CW communications performance?  After all, PSK31 does have similar traits to CW that intuitively suggests the very small signal bandwidth and a continuous amplitude waveform, where all of the transmit power is used while the text message is going out, that PSK31 may have comparable reception robustness to CW.  Further, in Steve Ford's article, *PSK31 – Has RTTY's Replacement Arrived?* <sup>2</sup>, PSK31  has the advantage of efficient digital signal processing algorithms used to demodulate and decode the message, and utilizes synchronized sampling rates that allow the receiver to know when to expect the next binary bit in the receiver's audio output. Surely, a PSK31 text message has a high probability of surviving the fading channel in relatively low SNR environments. Well to my surprise, where a good CW operator may be able to detect a signal at the noise floor level (SNR = 0dB) , my laboratory experiments found a PSK31 receive SNR must be at least 9 to 12 dB to successfully demodulate and decode a perfect or near-perfect text message. Amazing, the PSK31 signal must be 8 to 16 times stronger than the noise.

<div class="image-grid">

<div><amp-img on="tap:lightbox01" role="button" tabindex="0" src="home01.jpg" width="1440" height="810" layout="responsive"></amp-img></div>

<div><amp-img on="tap:lightbox01" role="button" tabindex="0" src="home02.jpg" width="1440" height="810" layout="responsive"></amp-img></div>

<div><amp-img on="tap:lightbox01" role="button" tabindex="0" src="home03.jpg" width="1440" height="810" layout="responsive"></amp-img></div>

<div><amp-img on="tap:lightbox01" role="button" tabindex="0" src="home05.jpg" width="1440" height="810" layout="responsive"></amp-img></div>

</div>

Today's sophisticated digital HF software applications such as HRD and Fldigi provide the receiving operator the SNR of the PSK31 signal.  Throughout my many National Park on the Air (NPOTA) PSK31 activations in 2016, that SNR report was frequently relayed back to me.  But what does the SNR really mean in terms of quality of text message received by that operator.  Although Readability, Signal Strength and Tone (RST) reports partially answer that question when received with the SNR report, what is the SNR threshold that separates a good text message from an unintelligible one?   So, being a fortunate owner of two HF rigs, the RIGOL DSA 815 Spectrum analyzer and the RIGOL DG4162 Waveform Generator, I proceeded to put a laboratory experiment together that visually quantifies PSK31 performance over a range of SNRs by observing the readability of the actual received text message.

<figure class="img-left">
<figcaption>Figure 1 - PSK31 Test Transmit & Receive Chain</figcaption>
<amp-img on="tap:lightbox01" role="button" tabindex="0" src="figure01.png" width="1440" height="810" layout="responsive" layout="responsive" />
</figure>

Figure 1 shows the transmitter and receiver chain used to derive PSK31 performance.  The transmit chain consists of a Notebook PC that hosts the Digipan PSK31 software application, SignaLink USB interface box, and the ICOM 718 transceiver.  It was much easier to source the PSK31 signal with its unique varicode characters, idle time synchronization bit pattern, and modulation scheme using an actual HF transceiver chain than to simulate the PSK31 waveform from a separate waveform generator.  However, the disadvantage of using an actual transceiver was the reduction in fidelity in controlling the power level of the transmitted signal. So to compensate, I held the transmit signal power constant and varied the amplitude level of Noise from the waveform generator to attain the desired SNR.   Note in Figure 1 the PSK31 received signal and noise are combined using the Mini-Circuits Splitter. This is the same splitter (combiner) used by Bob Allison, WB1GCM, in his ARRL publication, *Amateur Radio Transceiver Performance Testing* <sup>3</sup>.  Another extremely important criteria applied to this test was to use a realistic PSK31 received signal level that falls into the range of signal levels measured by our transceiver's S-Unit meter. You know, the meter which tells us the received signal strength in the range of S1, S2, S3, …. through S9 and S9 + X dB.  A received signal amplitude of -81.61 dBm  was achieved at the Yaesu FTdx3000 transceiver Receive Out test port by:

1. sampling the RF signal at the output of the ICOM 718 antenna port (47 dB attenuation)
1. adding another 60 db of attenuation provided by two separate in-line attenuators, and
1. incorporating the Mini-Circuits combiner 3 dB attenuation.

<figure class="img-right">
<figcaption>Figure 2 - FTdx3000_RX OUT</figcaption>
<amp-img on="tap:lightbox01" role="button" tabindex="0" src="figure02.png" width="1440" height="510" layout="responsive" />
</figure>

The Receive Output port on the Yaesu functioned as the SNR measurement reference point in this laboratory experiment. The schematic associated with the RX OUT Jack is derived from Yaesu's FTdx3000 technical brochure <sup>4</sup> and shown in Figure 2. Not to beat a dead horse, but, a -81.61 dBm PSK31 signal is really small, equivalent to 6.9 pico watts, or 6.9 x 10-9 milliwatts.  

<figure class="img-left">
<figcaption>Figure 3 – PSK31 Receiver Test Signal</figcaption>
<amp-img on="tap:lightbox01" role="button" tabindex="0" src="figure03.jpg" width="1440" height="810" layout="responsive" />
</figure>

The PSK31 received signal was measured using the DSA 815 Spectrum Analyzer, Figure 3. It is important to note the Resolution Bandwidth (RBW) I used on the spectrum analyzer to make this measurement. To capture the total power of the received signal, I used the lowest spectrum analyzer resolution bandwidth, RBW = 100 Hz, because the bandwidth of a PSK31 signal is less than 100 Hz. That resolution bandwidth was also used to measure the noise power level needed to establish the desired SNR.  It was absolutely critical to use the same RBW for both signal measurement and noise power measurement. Recall from the PODCAST, Joel Hallas reminds us the amount of signal needed to successfully decode an intelligible PSK31 message is based upon the amount of noise present in the receiver bandwidth. Since most of the PSK31 signal is confined to less than 100 Hz of bandwidth we only have to be concerned  about the noise present in that 100 Hz of bandwidth when deriving the noise amplitude required for a specific SNR.  

## Test Execution and Results

Once I established the PSK31 signal power level that would be used for each of the SNR test cases I derived the Noise amplitude required from the DG4162 Waveform Generator to set the desired SNR. The desired range of SNRs are shown in Table 1.

**Table 1 - PSK31 Test SNRs**

Constant BPSK31 Signal Power Average (dBm) at the Yaesu FTdx3000 RX OUT port as measured by the spectrum analyzer | Desired SNR (dB) | Calculated Noise Power (dBm) at the Yaesu FTdx3000 RX OUT port | Actual Noise Power (dBm) at the Yaesu FTdx3000 RX OUT port as measured by the spectrum analyzer to achieve the desired SNR | Actual SNR (dB) in this laboratory test
-- | -- | -- | -- | --
-81.61 | 30 | -111.61 | -111.58 | 29.97
-81.61 | 20 | -101.61 | -101.63 | 20.02
-81.61 | 12 | -93.61 | -93.64 | 12.03
-81.61 | 11 | -92.61 | -92.69 | 11.08
-81.61 | 10 | -91.61 | -91.51 | 9.9
-81.61 | 9 | -90.61 | -90.57 | 8.96
-81.61 | 8 | -89.61 | -89.31 | 7.7
-81.61 | 7 | -88.61 | -88.69 | 7.08
-81.61 | 6 | -87.61 | -87.99 | 6.38
-81.61 | 5 | -86.61 | -86.71 | 5.1

<figure class="img-right">
<figcaption>Figure 4 – Example Noise Waveform for the SNR 12dB Test</figcaption>
<amp-img on="tap:lightbox01" role="button" tabindex="0" src="figure04.jpg" width="1440" height="810" layout="responsive" />
</figure>

Initial test cases were executed to get the PSK31 performance at SNRs 30, 20, 10, and 6 dB.  And then, through an iterative process of evaluating test message reception readability at other SNRs, I was able to approximate the lowest PSK31 SNR that resulted in perfect message intelligibility.

Figure 4 is an example of the DSA 815 trace for the SNR = 12 dB test case where Noise amplitude = -93.64 dBm.
Detailed test results are shown in Table 2.

<div class="clear"></div>

**Table 2 - PSK31 Test Results**

Signal to Noise Ratio (dB) | Received Test Message Intelligibility
-- | --
29.97 | Perfect copy of 12 lines of text. I would give this a R (Readibility) = 5, perfectly readable
20.02 | Perfect copy of 9 lines of text. I would give this a R (Readibility) = 5, perfectly readable
12.03 | Perfect copy of 16 lines of text. I would give this a R (Readibility) = 5, perfectly readable
11.08 | Near perfect copy of 13 lines of text message. I would give this a R (Readibility) = 4
9.90 | Much of the 11 lines of text are intelligible; however, there are missing characters and a few missing words, I would give this a R (Readibility) = 4, readable with practically no difficulty
8.96 | Much of the 12 lines of text are intelligible; however, there are missing characters and a few missing words, I would give this a R (Readibility) = 4, readable with practically no difficulty
7.70 | At this SNR the message text is readable but with considerable difficulty. I would give this a R (Readibility) = 3.
7.08 | At this SNR the message text is barely readable, occasional words distinguishable.  I would give this a R (Readibility) = 2.
6.38 | At this SNR the message text is barely readable, occasional words distinguishable. However, much of the time Digipan was not able to demodulate and decode the message.  I would give this a R (Readibility) = 2.
5.1 | At this SNR the message text is not readable.  Digipan was not able to demodulate and decode any of the message. But, I could still here the PSK31 signal. I would give this a R (Readibility) = 1.

The PSK31 threshold between perfect and nearly perfect text message reception is 12 dB, that is, the PSK31 signal must be at least 16 times stronger or 2 S-Units stronger than the noise for perfect message reception.  Hence, if the Noise is an S2 the PSK31 signal should be an S4 to attain a perfect text message copy.  A near-perfect message copy can be received for SNRs less than 12 dB down to about 9 dB, or 1.5 S-Units above the noise. In short, the PSK31 signal should be about 1.5 to 2 S-Units stronger than the noise for a near-perfect or perfect text message, respectively.

Figure 5 shows the received text message where SNR = 12 dB. A perfect copy of 16 lines of text. I would give this a R (Readability) = 5, perfectly readable.

**Figure 5 – PSK31 Text Messages at SNR 12 dB**

<pre>
<code>&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
The quick brown Fox jumps over the lazy Dog 1234567890
The quick brown Fox jumps over the lazy Dog 1234567890
The quick brown Fox jumps over the lazy Dog 1234567890
The quick brown Fox jumps over the lazy Dog 1234567890
The quick brown Fox jumps over the lazy Dog 1234567890
The quick brown Fox jumps over the lazy Dog 1234567890
The quick brown Fox jumps over the lazy Dog 1234567890
The quick brown Fox jumps over the lazy Dog 1234567890
The quick brown Fox jumps over the lazy Dog 1234567890
The quick brown Fox jumps over the lazy Dog 1234567890
The quick brown Fox jumps over the lazy Dog 1234567890
The quick brown Fox jumps over the lazy Dog 1234567890
The quick brown Fox jumps over the lazy Dog 1234567890
The quick brown Fox jumps over the lazy Dog 1234567890
The quick brown Fox jumps over the lazy Dog 1234567890
The quick brown Fox jumps over the lazy Dog 1234567890
</code></pre>

Whereas, Figure 6 shows the received text message for SNR = 9 dB.  Most of the 12 lines of text are intelligible; however, there are missing characters and a few missing words, I would give this a R = 4, readable with practically no difficulty.

**Figure 6 - PSK31 Text Messages at SNR 9 dB**

<pre>
<code>&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
The quick brown Fox jumps over the ly Dog 123456789The quick brown Fox jumps over the lazy Dog 12345678
The quick brown Fox jumps over the lazy Dog 1234567890
The  brown Fox jumps over the lazyg 12347890
The quick brown Fox jumps over the lazy Dog 34567890
The quickwn Fox jumps over the lazy Dog 1234567890
The quick brown Fox jumps over the lazy Dog 123457890
The quick brown Foxjumps over the lazy Dog 123456
The quick brown Fox jumpr the lazy Dog 890
The x jumps over the lazy 4567890
The quick bjumps over the laz4567890
The quick brown Fox jumper the lazy Dog 123456790
</code></pre>

With a SNR = 7.7, Figure 7 shows the message text is readable but with considerable difficulty. I would report this message as R = 3.

**Figure 7 - PSK31 Text Messages at SNR 7.7 dB**

<pre>
<code>o&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;mps over the lazy Dog 1290
The quick brown Fops over the lazy Dog 1234890
The quick brown the lazy Dog 12345ox jumps over the lazy D34567890
The quick mps over the lazy Dog 234567890
The quick Fox jumps over the laz234567890
The qn Fox jumps over the laz7890
The quick browFox jumps over the lazy Dog567890
The quick own Fox jumps over the lazDog 1234567890
The qown Fox jumps over the laz234567890
The qwn Fou jumps over the lazick brown Fox mps over tg 1n i d suicrolazy Dog 123456790
</code></pre>

And finally, Figure 8 shows the message text is barely readable, occasional words distinguishable at SNR = 6.38 dB. During most of this reception, Digipan was not able to demodulate and decode the text characters.  I would give this a R = 2.

**Figure 8 - PSK31 Text Messages at SNR 6.38 dB**

<pre>
<code>.&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
The quick b over the lazy Dog 123 jumps over the lazy 34567890
The quips over the lazy Dog 67890
The quick be lazy Dog 123456y Dog 123456789The quick brown Fox jumpps over the
The qui e
</code></pre>

Digipan, the PSK31 software application used in this test, needs the PSK31 signal to be greater than 1 S-Unit (6 dB) above the noise to demodulate/decode any of the text message characters. In the SNR 5.1 dB test case, Digipan did not print any text message characters, but, I could still hear the PSK31 signal.

## Test Conclusions

In the real world, of course,  the noise level stays constant over the relatively short duration of a typical PSK31 QSO, and as most of us PSK31 users have experienced, it's the signal level that changes due to propagation condition induced fading during the QSO. In fact, during my NPOTA 2016 activations it wasn't uncommon that a QSO started out with a SNR of 20 or 30 dB, a perfectly readable text message, but then faded down to a SNR that caused the  text message to become only partially readable.  That event usually prompted the operators to send their 73s and terminate the contact.

So what should we conclude, abandon PSK31 and go to a more efficient communication mode like CW, JT65, or JT9? Absolutely not!  PSK31 is really a lot of fun to use and rarely are we constrained to QSOs with SNRs less than 12 dB on our most popular HF bands. Further, PSK31 offers a communication mode that appeals to many HF operators:  a text based, low data rate, leisure form of communications that provides real time messaging responses.  And, a  digital HF communications mode with extremely narrow transmit bandwidths that allows many of us to share the 3 KHz baseband at 14.070MHz, 7.070 MHz and the other PSK31 commonly used frequencies. But to be fair, my hat is off to CW, because when compared to PSK31, it still may get through when PSK31 can't.

James A. Frazier, Jr., KC5RUO

## References:

1. *Does CW Really Get Through When Nothing Else Can?* ARRL PODCAST, April 20, 2016
1. *PSK31 – Has RTTY's Replacement Arrived?* By Steve Ford, WB8IMY, http://www.arrl.org/psk31-has-rtty-s-replacement-arrived
1. *Amateur Radio Transceiver Performance Testing*, Bob Allison, WB1GCM, ARRL Publication, 2013, page 4-4, Figure 4.3.
1. Yaesu The Radio, HF/50MHz Transceiver FTDX3000 Series, FTDX3000_ENG_LEAFLET_NC%20(1).pdf
