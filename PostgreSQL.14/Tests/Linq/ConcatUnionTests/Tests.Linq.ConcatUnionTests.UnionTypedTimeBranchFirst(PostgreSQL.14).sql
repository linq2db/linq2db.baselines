-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
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

