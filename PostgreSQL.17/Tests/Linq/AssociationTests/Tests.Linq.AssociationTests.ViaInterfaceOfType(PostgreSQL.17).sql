-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"SubEntity" "a_SubEntities"
		WHERE
			x."Id" = "a_SubEntities"."MainEntityId"
	)
FROM
	"MainEntity" x

