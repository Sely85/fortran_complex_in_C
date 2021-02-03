#include <stdio.h>
 
struct dcomplex_ {
  double r;
  double i;
};

void tofcmplx_(struct dcomplex_ *f, struct dcomplex_ *c) {
  c->r = f->r + 1.0;
  c->i = f->i + 1.0;
}
