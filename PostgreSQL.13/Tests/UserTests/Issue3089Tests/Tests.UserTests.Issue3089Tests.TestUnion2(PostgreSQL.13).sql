﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	NULL::TimeStamp
FROM
	"TableTime" x
UNION
SELECT
	x_1."Time"
FROM
	"TableTime" x_1
UNION
SELECT
	NULL::TimeStamp
FROM
	"TableTime" x_2
UNION
SELECT
	NULL::TimeStamp
FROM
	"TableTime" x_3

