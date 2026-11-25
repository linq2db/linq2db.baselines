-- PostgreSQL.12 PostgreSQL12
INSERT INTO "UpdateOutputOwner" DEFAULT VALUES

-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
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

