-- PostgreSQL.18 PostgreSQL

INSERT INTO "Issue1303"
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

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ID",
	t1."Array",
	t1."Binary"
FROM
	"Issue1303" t1
WHERE
	t1."ID" = 1
LIMIT 2

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ID",
	t1."Array",
	t1."Binary"
FROM
	"Issue1303" t1
WHERE
	t1."Array" = E'\\x010203'::bytea
LIMIT 2

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ID",
	t1."Array",
	t1."Binary"
FROM
	"Issue1303" t1
WHERE
	t1."Binary" = E'\\x0405'::bytea
LIMIT 2

