BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"SubEntity" "a_SubEntities"
		WHERE
			"x"."Id" = "a_SubEntities"."MainEntityId"
	)
FROM
	"MainEntity" "x"

