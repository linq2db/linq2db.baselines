-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."ID",
	t1."Array",
	t1."Binary"
FROM
	"BinaryColumnRecord" t1
WHERE
	t1."ID" = 1
LIMIT 2

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."ID",
	t1."Array",
	t1."Binary"
FROM
	"BinaryColumnRecord" t1
WHERE
	t1."Array" = E'\\x010203'::bytea
LIMIT 2

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."ID",
	t1."Array",
	t1."Binary"
FROM
	"BinaryColumnRecord" t1
WHERE
	t1."Binary" = E'\\x0405'::bytea
LIMIT 2

