BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

UPDATE
	"UpdatedEntities"
SET
	"Value1" = "UpdatedEntities"."Value1" + "UpdatedEntities"."Value2" + "UpdatedEntities"."Value3",
	"Value2" = "UpdatedEntities"."Value1" + "UpdatedEntities"."Value2" + "UpdatedEntities"."Value3",
	"Value3" = 1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdatedEntities" v
				INNER JOIN "UpdateRelation" a_Relation ON v."RelationId" = a_Relation."id"
		WHERE
			a_Relation."RelatedValue1" = 11 AND "UpdatedEntities"."id" = v."id"
	)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	v."Value1",
	v."Value2",
	v."Value3"
FROM
	"UpdatedEntities" v
		INNER JOIN "UpdateRelation" a_Relation ON v."RelationId" = a_Relation."id"
WHERE
	a_Relation."RelatedValue1" = 11
FETCH NEXT 1 ROWS ONLY

