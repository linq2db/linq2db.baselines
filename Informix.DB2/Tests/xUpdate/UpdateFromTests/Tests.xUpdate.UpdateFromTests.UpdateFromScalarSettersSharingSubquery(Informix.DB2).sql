-- Informix.DB2 Informix

UPDATE
	NewEntities
SET
	Value1 = (
		SELECT
			n2.Value1
		FROM
			(
				SELECT
					NewEntities.Value3 + 10 as row_1
				FROM table(set{1})
			) t1
				LEFT JOIN UpdatedEntities n2 ON n2.id = t1.row_1
				INNER JOIN UpdateRelation n3 ON n2.RelationId = n3.id
		WHERE
			n3.RelatedValue3 < 1000
	),
	Value2 = (
		SELECT
			n3_1.RelatedValue2
		FROM
			(
				SELECT
					NewEntities.Value3 + 10 as row_1
				FROM table(set{1})
			) t2
				LEFT JOIN UpdatedEntities n2_1 ON n2_1.id = t2.row_1
				INNER JOIN UpdateRelation n3_1 ON n2_1.RelationId = n3_1.id
		WHERE
			n3_1.RelatedValue3 < 1000
	)
WHERE
	NewEntities.id = 7

