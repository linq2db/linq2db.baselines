BeforeExecute
-- PostgreSQL.18 PostgreSQL

INSERT INTO "Test3697" DEFAULT VALUES

BeforeExecute
-- PostgreSQL.18 PostgreSQL

UPDATE
	"Test3697Item"
SET
	"Value" = 1
FROM
	"Test3697" a
WHERE
	a."Id" = "Test3697Item"."TestId"
RETURNING
	NEW."Id"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

UPDATE
	"Test3697Item"
SET
	"Value" = 1
FROM
	"Test3697" a
WHERE
	a."Id" = "Test3697Item"."TestId"
RETURNING
	NEW."Id"

