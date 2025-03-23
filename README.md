# COMP637 Final Project  
## One-Time Pad (OTP) Protocol Verification Using Tamarin Prover

This project models and verifies the **One-Time Pad (OTP)** encryption scheme using the **Tamarin Prover**, a formal verification tool for security protocols.

The protocol is defined in the `otp.spthy` file, and security properties—such as message secrecy—are proven using Tamarin’s automated and interactive proving capabilities.

---

## How to Run the Project

1. **Make the script executable:**
   ```bash
   chmod +x run.sh

1. **Run Tamarin with the model:**
   ```bash
   ./run.sh