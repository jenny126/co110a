# WEEK01 Computer Architecture
###### tags: `Computer Architecture` `Sophomore A` `Homework` `Week01`

### Not
![Not](https://i.imgur.com/5k15CKs.jpg)

```hdl
    CHIP Not {
    IN in;
    OUT out;

    PARTS:
    // Put your code here:
    Nand(a=in, b=in, out=out);
    }
```


### And
![And](https://i.imgur.com/jXK9jlp.jpg)

```hdl
    CHIP And {
    IN a, b;
    OUT out;

    PARTS:
    // Put your code here:
    Nand(a=a, b=b, out=ab);
    Not(in=ab,out=out);
    }
```

### Or
![Or](https://i.imgur.com/IeeOLvk.jpg)

```hdl
    CHIP Or {
    IN a, b;
    OUT out;

    PARTS:
    // Put your code here:
    Not(in=a,out=nota);
    Not(in=b,out=notb);
    Nand(a=nota,b=notb,out=out);
    }
```
### Xor
![Xor](https://i.imgur.com/wQUkjSv.jpg)

```hdl
    CHIP Xor {
    IN a, b;
    OUT out;

    PARTS:
    // Put your code here:
    Not(in=a, out=na);
    Not(in=b, out=nb);
    And(a=na,b=b,out=outa);
    And(a=a,b=nb,out=outb);
    Or(a=outa,b=outb,out=out);
    }
```

### Mux
![Mux](https://i.imgur.com/NMmxlOb.jpg)

```hdl
    CHIP Mux {
    IN a, b, sel;
    OUT out;

    PARTS:
    // Put your code here:
    Not(in=sel, out=nsel);
    And(a=a, b=nsel, out=aandnsel);
    And(a=b,b=sel,out=bandsel);
    Or(a=aandnsel, b=bandsel, out=out);
}
```

### DMux
![DMux](https://i.imgur.com/ntbZw4n.jpg)

```hdl
    CHIP DMux {
    IN in, sel;
    OUT a, b;

    PARTS:
    // Put your code here:
    Not(in=sel, out=nsel);
    And(a=in, b=nsel, out=a);
    And(a=in, b=sel, out=b);
    }
```