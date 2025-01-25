BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id
FROM
	Entity1711 t
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Relationship1711 r
		WHERE
			r.Deleted = 'f'::BOOLEAN AND r.EntityId = t.Id
	)

