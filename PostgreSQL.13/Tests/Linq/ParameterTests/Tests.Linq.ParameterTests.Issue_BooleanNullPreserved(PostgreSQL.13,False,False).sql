-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

UPDATE
	"TestBool"
SET
	"Value" = NOT "TestBool"."Value"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

UPDATE
	"TestBool"
SET
	"Id" = 1,
	"Value" = True

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

