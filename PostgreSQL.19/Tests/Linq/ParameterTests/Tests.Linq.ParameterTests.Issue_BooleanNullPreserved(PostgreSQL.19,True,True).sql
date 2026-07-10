-- PostgreSQL.19 PostgreSQL12

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

-- PostgreSQL.19 PostgreSQL12

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

-- PostgreSQL.19 PostgreSQL12

UPDATE
	"TestBool"
SET
	"Value" = NOT "TestBool"."Value"

-- PostgreSQL.19 PostgreSQL12

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

-- PostgreSQL.19 PostgreSQL12

UPDATE
	"TestBool"
SET
	"Value" = False
WHERE
	"TestBool"."Id" = 1

-- PostgreSQL.19 PostgreSQL12

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

