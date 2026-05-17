-- PostgreSQL.15 PostgreSQL

UPDATE
	"NewEntities"
SET
	("Value1", "Value2") = (
		SELECT
			n2."Value1",
			n3."RelatedValue2"
		FROM
			(
				SELECT
					"NewEntities"."Value3" + 10 as c1
			) t1
				LEFT JOIN "UpdatedEntities" n2 ON n2.id = t1.c1
				INNER JOIN "UpdateRelation" n3 ON n2."RelationId" = n3.id
		WHERE
			n3."RelatedValue3" < 1000
		LIMIT 1
	)
WHERE
	"NewEntities".id = 7

