-- PostgreSQL.9.2 PostgreSQL
INSERT INTO "TestBool"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	True
)

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

-- PostgreSQL.9.2 PostgreSQL
UPDATE
	"TestBool"
SET
	"Value" = NOT "TestBool"."Value"

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

-- PostgreSQL.9.2 PostgreSQL
UPDATE
	"TestBool"
SET
	"Value" = True
WHERE
	"TestBool"."Id" = 1

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

