-- Oracle.21.Managed Oracle.Managed Oracle12

UPDATE
	"UpdatedEntities"
SET
	"Value3" = 1,
	("Value1", "Value2") = (
		SELECT
			v_1."Value1" + v_1."Value2" + v_1."Value3",
			v_1."Value1" + v_1."Value2" + v_1."Value3"
		FROM
			"UpdatedEntities" v_1
				INNER JOIN "UpdateRelation" a_Relation_1 ON v_1."RelationId" = a_Relation_1."id"
		WHERE
			a_Relation_1."RelatedValue1" = 11 AND "UpdatedEntities"."id" = v_1."id"
	)
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

-- Oracle.21.Managed Oracle.Managed Oracle12

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

