-- Firebird.2.5 Firebird

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

