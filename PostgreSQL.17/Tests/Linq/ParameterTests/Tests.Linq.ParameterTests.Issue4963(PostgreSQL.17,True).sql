﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

UPDATE
	"Issue4963Table"
SET
	"Field" = ("Issue4963Table"."Field"::Int + -1)::SmallInt

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Field"
FROM
	"Issue4963Table" t1
LIMIT 2

