/* -*- C -*- */
#include <stdlib.h>
#include "cnsc.h"

const struct type_t TYPES[] = {
    { "feat",     "a new feature" },
    { "fix",      "a bug fix" },
    { "refactor", "a code change that neither fixes a bug nor adds a new feature" },
    { "perf",     "a code change that improves performance" },
    { "style",    "changes that do not affect the meaning of the code" },
    { "docs",     "documentation only changes" },
    { "test",     "adds missing tests" },
    { "db",       "changes the database" },
    { "chore",    "changes to the build process or auxiliary tools or libraries such as documentation generation" },
    { NULL, NULL }
};
