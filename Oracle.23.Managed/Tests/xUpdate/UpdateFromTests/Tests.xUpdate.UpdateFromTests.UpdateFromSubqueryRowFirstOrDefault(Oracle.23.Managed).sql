-- Oracle.23.Managed Oracle.Managed Oracle12

UPDATE
	"NewEntities" u1
SET
	("Value1", "Value2") = (
		SELECT
			n2."Value1",
			n3."RelatedValue2"
		FROM
			(
				SELECT
					u1."Value3" + 10 as "c1"
				FROM SYS.DUAL
			) t1
				LEFT JOIN "UpdatedEntities" n2 ON n2."id" = t1."c1"
				INNER JOIN "UpdateRelation" n3 ON n2."RelationId" = n3."id"
		WHERE
			n3."RelatedValue3" < 1000 AND ROWNUM <= 1
	)
WHERE
	u1."id" = 7

