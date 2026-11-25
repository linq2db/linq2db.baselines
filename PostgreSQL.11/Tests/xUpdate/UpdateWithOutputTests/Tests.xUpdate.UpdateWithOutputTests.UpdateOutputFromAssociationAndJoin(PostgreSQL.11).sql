-- PostgreSQL.11 PostgreSQL
INSERT INTO "UpdateOutputOwner" DEFAULT VALUES

-- PostgreSQL.11 PostgreSQL
UPDATE
	"UpdateOutputItem"
SET
	"Value" = 1
FROM
	"UpdateOutputOwner" a
WHERE
	a."Id" = "UpdateOutputItem"."TestId"
RETURNING
	"UpdateOutputItem"."Id"

-- PostgreSQL.11 PostgreSQL
UPDATE
	"UpdateOutputItem"
SET
	"Value" = 1
FROM
	"UpdateOutputOwner" a
WHERE
	a."Id" = "UpdateOutputItem"."TestId"
RETURNING
	"UpdateOutputItem"."Id"

