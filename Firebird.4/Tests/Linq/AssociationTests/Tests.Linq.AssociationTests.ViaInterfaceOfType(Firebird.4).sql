BeforeExecute
-- Firebird.4 Firebird4

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

