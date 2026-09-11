-- Oracle.11.Managed Oracle11
DECLARE @Value3 Int32
SET     @Value3 = 42

UPDATE
	"UpdatedEntities"
SET
	"Value3" = :Value3,
	("Value1", "Value2") = (
		SELECT
			r."RelatedValue1",
			r."RelatedValue2"
		FROM
			"UpdateRelation" r
		WHERE
			r."id" = "UpdatedEntities"."RelationId"
	)
WHERE
	"UpdatedEntities"."id" = 1

