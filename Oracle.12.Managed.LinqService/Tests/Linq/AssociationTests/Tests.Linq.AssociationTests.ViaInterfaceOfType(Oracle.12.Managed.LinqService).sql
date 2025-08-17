BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"SubEntity" a_SubEntities
		WHERE
			x."Id" = a_SubEntities."MainEntityId"
	)
FROM
	"MainEntity" x

