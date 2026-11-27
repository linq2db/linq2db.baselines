-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
INSERT INTO "UpdateOutputOwner" DEFAULT VALUES

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

