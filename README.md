# Formal Verification of Onion Franking using Tamarin
## Authors: Kayla Casey, Sarah Haddix, Bao-Nhi Vu

This project models and verifies security properties of the **Onion Franking** cryptographic scheme for metadata hiding E2EE using the **Tamarin Prover**, a formal verification tool for symbolic model checking.

The model is defined in the `onion_franking.spthy` file, which models the correctness, unforgeability, and accountability security notions of the Onion Franking scheme under an idealized threat model. 
We use both **automated** and **interactive** proving capabilities of Tamarin in our analysis, found in the `onion_franking.spthy` file.

Before building the `onion_franking.spthy` model, we built a toy example modeling the **One-Time Pad Cipher (OTP)**. The OTP is a simple cipher with strong security guarantees,
making it an ideal candidate to model. The model is defined in the `otp.spthy` file and verifies the secrecy of the OTP encryption.

---

## Project Structure
- `onion_franking_proof.spthy` — Partial proof output from Tamarin on the `onion_franking.spthy` protocol.
- `onion_franking.spthy` — Main specification of the Onion Franking protocol.
- `otp_proof.spthy` — Full proof output and verification of the `otp.spthy` protocol.
- `otp.spthy` — Main specification of the OTP protocol.

---

## How to Run the Project

### 1. Download the Tamarin Prover
Follow the steps outlined on the Tamarin Prover website to download it:
[https://tamarin-prover.com/](https://tamarin-prover.com/)

### 2. Run Tamarin (Automatic Prover)
To open the interactive prover:
```bash
tamarin-prover interactive .
```
This will load all `.spthy` files in the current directory.

You can also specify a specific file:
```bash
tamarin-prover interactive otp.spthy
```
This will run the prover on `otp.spthy`. You can also run this script on `onion_franking.spthy`, but we recommend your machine has a large amount of memory (we used 96 GB).

If a lemma cannot be automatically proved, Tamarin will indicate that manual (interactive) proof is required.

---


### 2. Basic Usage in the Interactive Prover

Once the GUI opens:
- **Click on the `by sorry` step** under the lemma you wish to prove.
- **Press `1` or `2`** to simplify or start an induction proof
- **Press `a`** to automatically prove **the current lemma**.
- **Press `b`** to automatically prove **the current lemma for a depth of 5**.
- **Press `c`** to automatically prove **all lemmas**.


If a proof obligation cannot be automatically discharged, you can perform partial deconstructions or case analysis manually.

---

## Notes

- If you encounter "partial deconstructions left" messages, you may need to manually interact with the prover to guide it through proof steps.
- If Tamarin crashes due to resource limits on larger models, consider using flags like `--auto-sources` or manually structuring sources lemmas to help. We were not able to make use of `--auto-sources` due to memory and time limitations.


