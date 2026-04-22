-- Oracle.12.Managed Oracle.Managed Oracle12

UPDATE
	"NewEntities"
SET
	("Value1", "Value2") = (
		SELECT
			n2."Value1",
			n3."RelatedValue2"
		FROM
			"UpdatedEntities" n2
				INNER JOIN "UpdateRelation" n3 ON n2."RelationId" = n3."id"
		WHERE
			n2."id" = "NewEntities"."id" AND n3."RelatedValue3" < 1000
	)
WHERE
	"NewEntities"."id" = 7

