-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
INSERT INTO "BinaryColumnRecord"
(
	"ID",
	"Array",
	"Binary"
)
VALUES
(
	1,
	E'\\x010203'::bytea,
	E'\\x0405'::bytea
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ID",
	t1."Array",
	t1."Binary"
FROM
	"BinaryColumnRecord" t1
WHERE
	t1."ID" = 1
LIMIT 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ID",
	t1."Array",
	t1."Binary"
FROM
	"BinaryColumnRecord" t1
WHERE
	t1."Array" = E'\\x010203'::bytea
LIMIT 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ID",
	t1."Array",
	t1."Binary"
FROM
	"BinaryColumnRecord" t1
WHERE
	t1."Binary" = E'\\x0405'::bytea
LIMIT 2

