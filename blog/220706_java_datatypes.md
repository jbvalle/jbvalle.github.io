## Java Datatypes

## Important Terminologies

| Term | Description|
| --- | --- |
| Constructor | In Java a constructor is a method that initializes objects of a class |
| Java Field | Represents a value i.e. number or text. That is declared within a class|
| Java Method | Its a function declared within a class, which can expect and return variables |

## Overview

Java Types are divided into following Categories:


<table>
<tbody>
<tr>
<td rowspan=3>primitive Types</td>
<td colspan=2>boolean Types</td>
</tr>
<tr>
<td rowspan=2>numeric Types</td>
<td>Integer Typer (byte, char, short, int long)</td>
</tr>
<tr>
<td>floating-point Types (float and double)        
</tr>
<tr>
<td colspan=3>reference Types</td>
</tr>
</tbody>
</table>

Primitive Datatypes are not considered objects. However ,there are class representations for every type, consisting of fields or constants that can return a value. Additionally every of these classes consist of class specific methods, that can be looked up in the documentation. 

---

## Integral Types

### Memory Consumption of int Types

| Type | Memory|
| --- | --- |
| byte | 8 Bit |
| char | 16 Bit |
| short | 16 Bit |
| int | 32 Bit |
| long | 64 Bit |

---

## Char Types

### Representation

Char Types are generally an unsigned integer type with the following possible Representations:
- Code point (ex. char var = '50' | prints 2)
- Unicode escape (ex. char var = '\ul0041' | prints A)
- Printable symbol (Displayed on console) (ex. char var = 'x' | prints x)

--- 

## Floating-point types

### Memory Consumption for floating point types

| Type | Memory |
| --- | --- |
| float | 32 Bit |
| double | 64 Bit |

### Float - Double Representation

By default a floating type number is declared using a dot(.). By default a number with a dot is assumed to be of type double. Thats why the following declaration needs a float caster `float x = (float)3.141;`
