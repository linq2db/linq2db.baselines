-- Firebird.2.5 Firebird
INSERT INTO "UpdateOutputOwner" DEFAULT VALUES

-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird
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

