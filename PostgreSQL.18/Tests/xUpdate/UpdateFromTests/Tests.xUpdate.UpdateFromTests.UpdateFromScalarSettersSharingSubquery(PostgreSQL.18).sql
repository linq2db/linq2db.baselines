-- PostgreSQL.18 PostgreSQL

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
					u1."Value3" + 10 as row_1
			) t1
				LEFT JOIN "UpdatedEntities" n2 ON n2.id = t1.row_1
				INNER JOIN "UpdateRelation" n3 ON n2."RelationId" = n3.id
		WHERE
			n3."RelatedValue3" < 1000
	)
FROM
	"NewEntities" u1
WHERE
	u1.id = 7 AND "NewEntities".id = u1.id

