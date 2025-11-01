-- PostgreSQL.15 PostgreSQL

INSERT INTO "TestBool"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	NULL
)

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

-- PostgreSQL.15 PostgreSQL

UPDATE
	"TestBool"
SET
	"Id" = 1,
	"Value" = NOT "TestBool"."Value"

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

-- PostgreSQL.15 PostgreSQL

UPDATE
	"TestBool"
SET
	"Id" = 1,
	"Value" = NULL

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

