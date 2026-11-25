-- PostgreSQL.9.2 PostgreSQL
INSERT INTO "UpdateOutputOwner" DEFAULT VALUES

-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
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

