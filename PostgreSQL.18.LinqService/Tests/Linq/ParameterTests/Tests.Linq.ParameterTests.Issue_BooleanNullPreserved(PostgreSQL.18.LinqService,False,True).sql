BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

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

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

UPDATE
	"TestBool"
SET
	"Id" = 1,
	"Value" = NOT "TestBool"."Value"

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

UPDATE
	"TestBool"
SET
	"Id" = 1,
	"Value" = False

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
LIMIT 2

