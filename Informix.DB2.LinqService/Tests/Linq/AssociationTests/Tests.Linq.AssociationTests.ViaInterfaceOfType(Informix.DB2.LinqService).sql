BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			SubEntity a_SubEntities
		WHERE
			x.Id = a_SubEntities.MainEntityId
	)
FROM
	MainEntity x

