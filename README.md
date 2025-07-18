# 📘 README – Verilog Full Adder 8-bit (Saat Kontrollü)

## 📖 Proje Hakkında

Bu proje, **Verilog HDL** kullanarak clock (saat) kontrollü bir **8-bit tam toplayıcı (full adder)** tasarımı içerir.  
Toplama işlemi her clock sinyali geldiğinde **1 bit** olacak şekilde yapılır. Bu yöntem, donanımsal olarak gerçekçi ve anlaşılması kolay bir yaklaşım sunar.

---

## 🧩 Modül: Full_adder_8bit

### 🎯 Amaç
Verilen iki 8-bit sayıyı (A ve B) bir taşıma (Cin) ile toplayarak:

- **Sonuç (S)**
- **Her bit için taşıma değerleri (Cout)**

üretir.

---

## ⚙️ Çalışma Prensibi

- Toplama işlemi bir sayaç (`i`) ile **bit bit** yapılır.
- Her clock (saat) kenarında 1 bit toplanır.
- Taşıma (carry) değeri, bir sonraki bit için güncellenerek devam eder.
- Toplam **8 clock döngüsünde** işlem tamamlanır.

---

## 📝 Değişken Açıklamaları

| Değişken     | Açıklama                                  |
|--------------|--------------------------------------------|
| A, B         | Toplanacak 8-bit sayı girişleri            |
| S            | 8-bitlik toplam sonucu                     |
| Cout         | Her bit için oluşan taşıma değerleri (8-bit)|
| Cin_current  | O anki taşıma (carry-in)                   |
| Cin_next     | Sonraki döngü için taşıma değeri           |
| clk          | Saat (clock) sinyali                       |
| i            | Hangi bitin toplandığını belirten sayaç    |

---

## ⏲️ Saat Döngüsü (Clock Cycle)

- **Pozitif Kenar (posedge clk):**
  - `S[i]` ve `Cout[i]` hesaplanır.
  - `Cin_next` güncellenir.
- **Negatif Kenar (negedge clk):**
  - `Cin_current`, `Cin_next`’ten alınır. Taşıma, bir sonraki döngü için hazır olur.

---

## 🧪 Test Verileri

Kod içinde başlangıç değerleri:

verilog
A = 8'b0000_0101;  // 5
B = 8'b1111_0011;  // 243



## 🖥️ Simülasyon

Kod, test bench’e ihtiyaç duymadan kendi içinde test çalıştırır.  
İsterseniz aşağıdaki gibi bir simülasyon çıktısı eklerseniz sonucu görebilirsiniz:

verilog
if (i == 8) begin
  $display("A     = %b", A);
  $display("B     = %b", B);
  $display("Sum   = %b", S);
  $display("Cout  = %b", Cout);
  $finish;
end


📚 Öğrenme Notları
Bu proje, 1-bit full adder mantığını 8-bit’e genişletme fikrini temel alır.

Tüm bitleri aynı anda toplamak yerine clock ile sıralı toplama, senkron devre mantığını anlamaya yardımcı olur.

Taşımanın sıralı işlenmesi için Cin_current ve Cin_next kullanımı önemlidir.

---

# 📘 README – Verilog Full Adder 8-bit (Clock Controlled)

## 📖 About the Project

This project includes a **clock-controlled 8-bit full adder** design using **Verilog HDL**.  
The addition is performed **1 bit at a time** on each clock signal. This method offers a hardware-realistic and easy-to-understand approach.

---

## 🧩 Module: Full_adder_8bit

### 🎯 Purpose
To add two 8-bit numbers (A and B) along with an input carry (Cin), producing:

- **Result (S)**
- **Carry-out values (Cout) for each bit**

---

## ⚙️ Operating Principle

- The addition is performed **bit by bit** using a counter (`i`).
- On each clock edge, 1 bit is added.
- The carry value is updated for the next bit.
- The entire operation completes in **8 clock cycles**.

---

## 📝 Variable Descriptions

| Variable     | Description                                 |
|--------------|---------------------------------------------|
| A, B         | 8-bit input numbers to be added             |
| S            | 8-bit sum result                            |
| Cout         | Carry-out values for each bit (8-bit)       |
| Cin_current  | Current carry-in                            |
| Cin_next     | Next carry value for the following cycle     |
| clk          | Clock signal                                |
| i            | Counter indicating which bit is being added |

---

## ⏲️ Clock Cycle

- **Positive Edge (posedge clk):**
  - Computes `S[i]` and `Cout[i]`.
  - Updates `Cin_next`.
- **Negative Edge (negedge clk):**
  - Transfers `Cin_next` to `Cin_current`. The carry is now ready for the next cycle.

---

## 🧪 Test Data

Initial values in the code:

```verilog
A = 8'b0000_0101;  // 5
B = 8'b1111_0011;  // 243


## 🖥️ Simulation

The code can run self-tests without requiring a test bench.
You can add the following simulation output to see the results:


if (i == 8) begin
  $display("A     = %b", A);
  $display("B     = %b", B);
  $display("Sum   = %b", S);
  $display("Cout  = %b", Cout);
  $finish;
end


## 📚 Learning Notes

- This project is based on the idea of **extending 1-bit full adder logic to 8-bit**.
- Instead of adding all bits at once, **sequential addition with the clock** helps understand synchronous circuit design.
- The use of **`Cin_current`** and **`Cin_next`** is crucial for sequential carry handling.



