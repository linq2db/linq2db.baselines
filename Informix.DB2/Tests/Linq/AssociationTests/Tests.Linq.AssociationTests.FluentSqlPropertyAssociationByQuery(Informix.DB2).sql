-- Informix.DB2 Informix
SELECT
	t.Id
FROM
	SqlPropertyAssociationEntity t
WHERE
	EXISTS(
		SELECT
			*
		FROM
			SqlPropertyAssociationRelation r
		WHERE
			r.Deleted = 'f'::BOOLEAN AND r.EntityId = t.Id
	)

