-- PostgreSQL.9.3 PostgreSQL
SELECT
	NULL::TimeStamp
FROM
	"UnionNullTimeRow" x
UNION
SELECT
	x_1."Time"
FROM
	"UnionNullTimeRow" x_1
UNION
SELECT
	NULL::TimeStamp
FROM
	"UnionNullTimeRow" x_2
UNION
SELECT
	NULL::TimeStamp
FROM
	"UnionNullTimeRow" x_3

