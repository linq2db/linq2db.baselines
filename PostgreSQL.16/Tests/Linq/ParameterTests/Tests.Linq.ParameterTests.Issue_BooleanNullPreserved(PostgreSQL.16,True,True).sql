-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

INSERT INTO "TestBool"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	False
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
	"Value" = False
WHERE
	"TestBool"."Id" = 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

