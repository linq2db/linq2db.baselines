-- Firebird.4 Firebird4
INSERT INTO "UpdateOutputOwner" DEFAULT VALUES

-- Firebird.4 Firebird4
UPDATE
	"UpdateOutputItem"
SET
	"Value" = 1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdateOutputOwner" "a"
				INNER JOIN "UpdateOutputItem" "a_Items" ON "a"."Id" = "a_Items"."TestId"
		WHERE
			"UpdateOutputItem"."Id" = "a_Items"."Id"
	)
RETURNING
	NEW."Id"

-- Firebird.4 Firebird4
UPDATE
	"UpdateOutputItem"
SET
	"Value" = 1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdateOutputOwner" "a"
				INNER JOIN "UpdateOutputItem" "b" ON "a"."Id" = "b"."TestId"
		WHERE
			"UpdateOutputItem"."Id" = "b"."Id"
	)
RETURNING
	NEW."Id"

