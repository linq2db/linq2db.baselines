-- Oracle.21.Managed Oracle.Managed Oracle12

UPDATE
	"UpdatedEntities"
SET
	("Value1", "Value2", "Value3", "RelationId") = (
		SELECT
			r."RelatedValue1",
			r."RelatedValue2",
			r."RelatedValue3",
			r."id"
		FROM
			"UpdateRelation" r
		WHERE
			r."id" = "UpdatedEntities"."RelationId"
	)
WHERE
	"UpdatedEntities"."id" = 1

