﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	x."Id",
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
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"SubEntity" "a_SubEntities_1"
		WHERE
			x."Id" = "a_SubEntities_1"."MainEntityId"
	)

