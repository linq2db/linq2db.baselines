BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

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

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

UPDATE
	"TestBool"
SET
	"Value" = NOT "TestBool"."Value"

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

UPDATE
	"TestBool"
SET
	"Id" = 1,
	"Value" = NULL

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

