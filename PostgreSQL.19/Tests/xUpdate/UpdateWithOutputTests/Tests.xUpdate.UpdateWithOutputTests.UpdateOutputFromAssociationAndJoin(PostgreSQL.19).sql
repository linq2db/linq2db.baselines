-- PostgreSQL.19 PostgreSQL12
INSERT INTO "UpdateOutputOwner" DEFAULT VALUES

-- PostgreSQL.19 PostgreSQL12
UPDATE
	"UpdateOutputItem"
SET
	"Value" = 1
FROM
	"UpdateOutputOwner" a
WHERE
	a."Id" = "UpdateOutputItem"."TestId"
RETURNING
	NEW."Id"

-- PostgreSQL.19 PostgreSQL12
UPDATE
	"UpdateOutputItem"
SET
	"Value" = 1
FROM
	"UpdateOutputOwner" a
WHERE
	a."Id" = "UpdateOutputItem"."TestId"
RETURNING
	NEW."Id"

