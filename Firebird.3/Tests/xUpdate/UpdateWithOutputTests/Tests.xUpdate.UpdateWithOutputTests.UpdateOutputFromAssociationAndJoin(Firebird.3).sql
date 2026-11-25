-- Firebird.3 Firebird3
INSERT INTO "UpdateOutputOwner" DEFAULT VALUES

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
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

