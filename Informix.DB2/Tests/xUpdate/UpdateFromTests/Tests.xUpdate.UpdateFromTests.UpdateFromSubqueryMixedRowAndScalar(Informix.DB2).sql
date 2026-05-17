-- Informix.DB2 Informix
DECLARE @Value3 Integer(4) -- Int32
SET     @Value3 = 42

UPDATE
	UpdatedEntities
SET
	Value3 = @Value3,
	Value1 = (
		SELECT
			(
				SELECT
					r.RelatedValue1
				FROM table(set{1})
			)
		FROM
			UpdateRelation r
		WHERE
			r.id = UpdatedEntities.RelationId
	),
	Value2 = (
		SELECT
			(
				SELECT
					r_1.RelatedValue2
				FROM table(set{1})
			)
		FROM
			UpdateRelation r_1
		WHERE
			r_1.id = UpdatedEntities.RelationId
	)
WHERE
	UpdatedEntities.id = 1

