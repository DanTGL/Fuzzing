/*
 * lintmain.c: Main routine for xmllint
 *
 * See Copyright for the status of this software.
 */

#include "libxml/parser.h"
#include <libxml/xmlreader.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
  xmlDocPtr doc = xmlParseMemory((const char *)Data, Size);
  if (!doc)
    return 1;

  xmlFreeDoc(doc);

  return 0;
}
