-- Oracle.23.Managed Oracle.Managed Oracle12

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

