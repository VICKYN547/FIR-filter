# FIR-filter

A Finite Impulse Response (FIR) filter is a type of digital filter that has a finite number of coefficients (or taps). It is one of the most common and widely used digital filters due to its stability, linear phase response, and ease of implementation.

# Key Characteristics

Feature	FIR Filter
Impulse Response	Finite (lasts for a limited duration)
Stability	Always stable
Phase Response	Can be linear (no phase distortion)
Feedback	None (non-recursive)
Design Simplicity	Easier to design compared to IIR



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

🔧 Construction of FIR Filter
An FIR (Finite Impulse Response) filter is constructed using:

1.Filter Coefficients (Impulse Response):
These are the weights h[k] applied to input samples. They define the filter's behavior (low-pass, high-pass, etc.). The coefficients are usually designed using:

Window method (e.g., Hamming, Hanning)

Frequency sampling method

Parks-McClellan algorithm
2.Multipliers:
Each delayed input is multiplied by its corresponding coefficient.
3.Adder (Summer):
Adds all the multiplied values to produce the output.

FIR Filter Structure (Block Diagram)

x[n] -->●-->[ z⁻¹ ]-->●-->[ z⁻¹ ]-->●--> ... -->[ z⁻¹ ]-->●
         |            |            |                   |
         h[0]         h[1]         h[2]                h[N-1]
         |            |            |                   |
         ↓            ↓            ↓                   ↓
        Sum <--------+------------+--------------------+
                        y[n] = ∑ h[k]·x[n - k]
⚙️ Working of FIR Filter
The FIR filter works by applying the following steps for each input sample:

Step-by-step Operation:
1.Input Sampling:
New sample x[n] is fed into the delay line.

2.Delay and Storage:
Previous input values are shifted in the delay line.

🧠 Key Concepts
#Non-recursive: FIR filters do not use past outputs in the calculation, unlike IIR filters.

#Linear Phase: If the coefficients are symmetric or anti-symmetric, the filter has a linear phase, preserving wave shape.


