-- Oracle.23.Managed Oracle.Managed Oracle12
UPDATE
	"NewEntities" t1
SET
	("Value1", "Value2") = (
		SELECT
			n2."Value1",
			n3."RelatedValue2"
		FROM
			"UpdatedEntities" n2
				LEFT JOIN "UpdateRelation" n3 ON n3."RelatedValue1" = n2."RelationId"
		WHERE
			n2."id" = t1."id"
	)

