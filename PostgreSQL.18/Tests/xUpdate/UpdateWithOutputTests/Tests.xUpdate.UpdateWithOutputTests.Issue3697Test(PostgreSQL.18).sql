-- PostgreSQL.18 PostgreSQL12

INSERT INTO "Test3697" DEFAULT VALUES

-- PostgreSQL.18 PostgreSQL12

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

-- PostgreSQL.18 PostgreSQL12

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

