BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

INSERT INTO "Test3697" DEFAULT VALUES

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

UPDATE
	"Test3697Item"
SET
	"Value" = 1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Test3697" "a"
				INNER JOIN "Test3697Item" "a_Items" ON "a"."Id" = "a_Items"."TestId"
		WHERE
			"Test3697Item"."Id" = "a_Items"."Id"
	)
RETURNING
	NEW."Id"

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

UPDATE
	"Test3697Item"
SET
	"Value" = 1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Test3697" "a"
				INNER JOIN "Test3697Item" "b" ON "a"."Id" = "b"."TestId"
		WHERE
			"Test3697Item"."Id" = "b"."Id"
	)
RETURNING
	NEW."Id"

