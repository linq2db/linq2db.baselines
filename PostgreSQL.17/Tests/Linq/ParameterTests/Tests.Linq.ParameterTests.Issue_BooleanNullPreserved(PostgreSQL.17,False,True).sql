-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

UPDATE
	"TestBool"
SET
	"Id" = 1,
	"Value" = NOT "TestBool"."Value"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

UPDATE
	"TestBool"
SET
	"Id" = 1,
	"Value" = False

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

