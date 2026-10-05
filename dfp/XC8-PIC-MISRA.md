# MISRA Compliance Deviations List

## MISRA-C:2023

### Deviation ID: MFWCG-40

- **Rule 5.5**: Identifiers shall be distinct from macro names.
- **Use case**: Identifiers corresponding to register names.

  Example:

  ```c
  // Register: SPI1STATUS
  #define SPI1STATUS SPI1STATUS
  extern volatile unsigned char           SPI1STATUS          __at(0x1DE);
  ```

- **Reason**: Access to hardware.

  The macros expand into the same identifiers, which allow users to detect
  for the presence of specific registers during preprocessing.

- **Scope**: All device-specific header files (i.e. `<device-name>.h`).

### Deviation ID: MFWCG-41

- **Rule 5.8**: Identifiers that define objects or functions with external
  linkage shall be unique.
- **Use case**: Unions of bitfield structures that represent the implemented
  and semantic bits of the register.

  Example:

  ```c
  // Register: NVMADRU
  #define NVMADRU NVMADRU
  extern volatile unsigned char           NVMADRU             __at(0x05D);
  #ifndef _LIB_BUILD
  asm("NVMADRU equ 05Dh");
  #endif
  // bitfield definitions
  typedef union {
      struct {
          unsigned int NVMADRU                :6;
      };
      struct {
          unsigned int NVMADR16               :1;
          unsigned int NVMADR17               :1;
          unsigned int NVMADR18               :1;
          unsigned int NVMADR19               :1;
          unsigned int NVMADR20               :1;
          unsigned int NVMADR21               :1;
      };
  } NVMADRUbits_t;
  extern volatile NVMADRUbits_t NVMADRUbits __at(0x05D);
  ```

- **Reason**: Access to hardware.

  The names assigned are the same as those in the device data sheet. These
  are in direct correspondence to simplify code comprehension.

- **Scope**: All device-specific header files (i.e. `<device-name>.h`).

### Deviation ID: MFWCG-42

- **Rule 20.9**: All identifiers used in the controlling expression of `#if`
  or `#elif` preprocessing directives shall be `#define`'d before evaluation.
- **Use case**: Use of compiler builtin macros.

  Example:

  ```c
  #if	EEPROM_SIZE > 0
  #define __EEPROM_DATA(a, b, c, d, e, f, g, h) \
               __asm("\tpsect eeprom_data,class=EEDATA,delta=2,space=3,noexec"); \
               __asm("\tdb\t" ___mkstr(a) "," ___mkstr(b) "," ___mkstr(c) "," ___mkstr(d) "," \
                        ___mkstr(e) "," ___mkstr(f) "," ___mkstr(g) "," ___mkstr(h))
  #endif
  ```

- **Reason**: Access to hardware.

  Headers may rely on many builtin macros from the compiler and are written
  under the assumption that if the macro is not defined, its value is zero.

- **Scope**: All architecture headers (i.e. `pic.h` and `pic18.h`).

### Deviation ID: MFWCG-43

- **Rule 21.1**: `#define` and `#undef` shall not be used on a reserved
  identifier or reserved macro name.
- **Use case**: Reserved names, beginning with `_` followed by a capital
  letter or `__` followed by a lower-case are within the compiler's
  namespace.

  Example:

  ```c
  // bitfield macros
  #define _NVMADRU_NVMADRU_POSN                               0x0
  #define _NVMADRU_NVMADRU_POSITION                           0x0
  #define _NVMADRU_NVMADRU_SIZE                               0x6
  #define _NVMADRU_NVMADRU_LENGTH                             0x6
  ```

- **Reason**: Access to hardware; Code Quality (Usability: Accessibility).

  Within these headers originate many reserved names that are within the
  compiler's namespace.

- **Scope**: All architecture and device-specific header files (i.e.
  `pic.h`, `pic18.h`, and `<device-name>.h`).

### Deviation ID: MFWCG-44

- **Rule 21.2**: A reserved identifier or reserved macro name shall not be
  declared.
- **Use case**: Reserved names, beginning with `_` followed by a capital
  letter or `__` followed by a lower-case are within the compiler's
  namespace.

  Example:

  ```c
  /*
   * Device Information Area (DIA) Table
   */
  extern const unsigned char              _DIA[64]            __at(0x2C0000);
  ```

- **Reason**: Access to hardware; Code Quality (Usability: Accessibility).

  Within these headers originate many reserved names that are within the
  compiler's namespace.

- **Scope**: All architecture and device-specific header files (i.e.
  `pic.h`, `pic18.h`, and `<device-name>.h`).

## MISRA-C:2025

### Deviation ID: MFWCG-40

- **Rule 5.5**: Identifiers shall be distinct from macro names.
- **Use case**: Identifiers corresponding to register names.

  Example:

  ```c
  // Register: SPI1STATUS
  #define SPI1STATUS SPI1STATUS
  extern volatile unsigned char           SPI1STATUS          __at(0x1DE);
  ```

- **Reason**: Access to hardware.

  The macros expand into the same identifiers, which allow users to detect
  for the presence of specific registers during preprocessing.

- **Scope**: All device-specific header files (i.e. `<device-name>.h`).

### Deviation ID: MFWCG-41

- **Rule 5.8**: Identifiers that define objects or functions with external
  linkage shall be unique.
- **Use case**: Unions of bitfield structures that represent the implemented
  and semantic bits of the register.

  Example:

  ```c
  // Register: NVMADRU
  #define NVMADRU NVMADRU
  extern volatile unsigned char           NVMADRU             __at(0x05D);
  #ifndef _LIB_BUILD
  asm("NVMADRU equ 05Dh");
  #endif
  // bitfield definitions
  typedef union {
      struct {
          unsigned int NVMADRU                :6;
      };
      struct {
          unsigned int NVMADR16               :1;
          unsigned int NVMADR17               :1;
          unsigned int NVMADR18               :1;
          unsigned int NVMADR19               :1;
          unsigned int NVMADR20               :1;
          unsigned int NVMADR21               :1;
      };
  } NVMADRUbits_t;
  extern volatile NVMADRUbits_t NVMADRUbits __at(0x05D);
  ```

- **Reason**: Access to hardware.

  The names assigned are the same as those in the device data sheet. These
  are in direct correspondence to simplify code comprehension.

- **Scope**: All device-specific header files (i.e. `<device-name>.h`).

### Deviation ID: MFWCG-44

- **Rule 5.10**: A reserved identifier or reserved macro name shall not be
  declared.
- **Use case**: Reserved names, beginning with `_` followed by a capital
  letter or `__` followed by a lower-case are within the compiler's
  namespace.

  Example:

  ```c
  extern unsigned char __osccal_val(void);
  ```

- **Reason**: Access to hardware; Code Quality (Usability: Accessibility).

  Within these headers originate many reserved names that are within the
  compiler's namespace.

- **Scope**: All device headers (`<device-name>.h`).

### Deviation ID: MFWCG-42

- **Rule 20.9**: All identifiers used in the controlling expression of `#if`
  or `#elif` preprocessing directives shall be `#define`'d before evaluation.
- **Use case**: Use of compiler builtin macros.

  Example:

  ```c
  #if	EEPROM_SIZE > 0
  #define __EEPROM_DATA(a, b, c, d, e, f, g, h) \
               __asm("\tpsect eeprom_data,class=EEDATA,delta=2,space=3,noexec"); \
               __asm("\tdb\t" ___mkstr(a) "," ___mkstr(b) "," ___mkstr(c) "," ___mkstr(d) "," \
                        ___mkstr(e) "," ___mkstr(f) "," ___mkstr(g) "," ___mkstr(h))
  #endif
  ```

- **Reason**: Access to hardware.

  Headers may rely on builtin macros from the compiler and are written under
  the assumption that if the macro is not defined, its value is zero.

- **Scope**: All device headers (`<device-name>.h`).

### Deviation ID: MFWCG-43

- **Rule 20.15**: `#define` and `#undef` shall not be used on a reserved
  identifier or reserved macro name.
- **Use case**: Reserved names, beginning with `_` followed by a capital
  letter or `__` followed by a lower-case are within the compiler's
  namespace.

  Example:

  ```c
  // bitfield macros
  #define _CLKRCON_DIV_POSN                                   0x0
  #define _CLKRCON_DIV_POSITION                               0x0
  #define _CLKRCON_DIV_SIZE                                   0x3
  ```

- **Reason**: Access to hardware; Code Quality (Usability: Accessibility).

  Within these headers originate many reserved names that are within the
  compiler's namespace.

- **Scope**: All architecture and device-specific header files (i.e.
  `pic.h`, `pic18.h`, and `<device-name>.h`).
