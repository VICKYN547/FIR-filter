# FIR-filter

A Finite Impulse Response (FIR) filter is a type of digital filter that has a finite number of coefficients (or taps). It is one of the most common and widely used digital filters due to its stability, linear phase response, and ease of implementation.

Key Characteristics
Feature	FIR Filter
Impulse Response	Finite (lasts for a limited duration)
Stability	Always stable
Phase Response	Can be linear (no phase distortion)
Feedback	None (non-recursive)
Design Simplicity	Easier to design compared to IIR

**#FIR Filter Equation**

The output 
𝑦
[
𝑛
]
y[n] of an FIR filter is calculated as a weighted sum of the current and past input values:

𝑦
[
𝑛
]
=
∑
𝑘
=
0
𝑁
−
1
ℎ
[
𝑘
]
⋅
𝑥
[
𝑛
−
𝑘
]
y[n]= 
k=0
∑
N−1
​
 h[k]⋅x[n−k]
𝑥
[
𝑛
]
x[n]: input signal

ℎ
[
𝑘
]
h[k]: filter coefficients (impulse response)

𝑁
N: number of taps (filter order + 1)


**Advantages**


Guaranteed stability (no feedback).

Linear phase possible (important in audio and communication).

Easily implemented on DSPs and FPGAs.


**Disadvantages**


Typically requires more computation than IIR filters for similar sharpness.

May need more memory (due to more taps).

**Applications**


Audio processing

Image processing

Communication systems

Biomedical signal filtering

Equalizers and interpolators


****Common FIR Filter Types****


Low-pass: Allows low frequencies, blocks high.

High-pass: Allows high frequencies, blocks low.

Band-pass: Allows a range of frequencies.

Band-stop (notch): Removes a narrow band.
