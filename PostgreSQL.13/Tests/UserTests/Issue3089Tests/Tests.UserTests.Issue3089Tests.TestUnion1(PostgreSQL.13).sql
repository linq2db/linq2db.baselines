BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."Time"
FROM
	"TableTime" x
UNION
SELECT
	NULL::TimeStamp
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

