BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

INSERT INTO "Test3697" DEFAULT VALUES

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

UPDATE
	"Test3697Item"
SET
	"Value" = 1
FROM
	"Test3697" a
WHERE
	a."Id" = "Test3697Item"."TestId"
RETURNING
	"Test3697Item"."Id"

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

UPDATE
	"Test3697Item"
SET
	"Value" = 1
FROM
	"Test3697" a
WHERE
	a."Id" = "Test3697Item"."TestId"
RETURNING
	"Test3697Item"."Id"

