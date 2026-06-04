-- Oracle.21.Managed Oracle.Managed Oracle12

UPDATE
	"NewEntities"
SET
	("Value1", "Value2") = (
		SELECT
			n2."Value1",
			n3."RelatedValue2"
		FROM
			"UpdatedEntities" n2
				LEFT JOIN "UpdateRelation" n3 ON n3."id" = n2."RelationId"
		WHERE
			n2."id" = "NewEntities"."id"
	)

