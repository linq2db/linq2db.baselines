-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	x."Time"
FROM
	"UnionNullTimeRow" x
UNION
SELECT
	NULL::TimeStamp
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

