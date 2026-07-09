-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

UPDATE
	"TestBool"
SET
	"Value" = NOT "TestBool"."Value"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

UPDATE
	"TestBool"
SET
	"Value" = True
WHERE
	"TestBool"."Id" = 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

