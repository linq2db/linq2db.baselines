-- PostgreSQL.15 PostgreSQL

INSERT INTO "Test3697" DEFAULT VALUES

-- PostgreSQL.15 PostgreSQL

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

-- PostgreSQL.15 PostgreSQL

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

