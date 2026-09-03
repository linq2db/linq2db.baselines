-- PostgreSQL.9.3 PostgreSQL
UPDATE
	"InheritanceFilter"
SET
	"Child1Field" = 66
WHERE
	"InheritanceFilter"."Id" = 1

-- PostgreSQL.9.3 PostgreSQL
INSERT INTO "InheritanceFilter"
(
	"Id",
	"Code",
	"Child1Field"
)
VALUES
(
	1,
	1,
	55
)

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Code",
	t1."Child1Field"
FROM
	"InheritanceFilter" t1
WHERE
	t1."Code" IN (12, 11, 1)
LIMIT 2

-- PostgreSQL.9.3 PostgreSQL
UPDATE
	"InheritanceFilter"
SET
	"Child1Field" = 66
WHERE
	"InheritanceFilter"."Id" = 1

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Code",
	t1."Child1Field"
FROM
	"InheritanceFilter" t1
WHERE
	t1."Code" IN (12, 11, 1)
LIMIT 2

