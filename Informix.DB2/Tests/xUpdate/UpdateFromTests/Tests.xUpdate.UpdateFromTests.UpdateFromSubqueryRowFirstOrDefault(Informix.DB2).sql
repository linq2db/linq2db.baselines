-- Informix.DB2 Informix
UPDATE
	NewEntities
SET
	Value1 = (
		SELECT FIRST 1
			n2.Value1
		FROM
			(
				SELECT
					NewEntities.Value3 + 10 as c1
				FROM table(set{1})
			) t1
				LEFT JOIN UpdatedEntities n2 ON n2.id = t1.c1
				INNER JOIN UpdateRelation n3 ON n2.RelationId = n3.id
		WHERE
			n3.RelatedValue3 < 1000
	),
	Value2 = (
		SELECT FIRST 1
			n3_1.RelatedValue2
		FROM
			(
				SELECT
					NewEntities.Value3 + 10 as c1
				FROM table(set{1})
			) t2
				LEFT JOIN UpdatedEntities n2_1 ON n2_1.id = t2.c1
				INNER JOIN UpdateRelation n3_1 ON n2_1.RelationId = n3_1.id
		WHERE
			n3_1.RelatedValue3 < 1000
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			NewEntities u1
		WHERE
			u1.id = 7 AND NewEntities.id = u1.id
	)

