-- Informix.DB2 Informix

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

