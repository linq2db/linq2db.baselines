-- Oracle.21.Managed Oracle.Managed Oracle12

UPDATE
	"NewEntities"
SET
	("Value1", "Value2") = (
		SELECT
			n3."RelatedValue1",
			n3."RelatedValue2"
		FROM
			"UpdateRelation" n3
		WHERE
			(
				SELECT
					n2."id"
				FROM
					"UpdatedEntities" n2
				WHERE
					n2."id" = "NewEntities"."id" AND ROWNUM <= 1
			) IS NOT NULL AND
			"NewEntities"."Value1" = n3."id" AND ROWNUM <= 1
	)
WHERE
	"NewEntities"."id" = 7

