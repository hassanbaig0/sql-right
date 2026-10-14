#include <stdint.h>
#include "checked.h"

status_t checked_add(size_t a, size_t b, size_t *out)
{
    if (out == NULL)
    {
        return ST_INVALID_ARG;
    }
    if (a > SIZE_MAX - b)
        return ST_SIZE_OVERFLOW;
    *out = a + b;
    return ST_OK;
}

status_t checked_mul(size_t a, size_t b, size_t *out)
{
    if (out == NULL)
    {
        return ST_INVALID_ARG;
    }
    if (a > SIZE_MAX / b)
        return ST_SIZE_OVERFLOW;
    *out = a * b;
    return ST_OK;
}