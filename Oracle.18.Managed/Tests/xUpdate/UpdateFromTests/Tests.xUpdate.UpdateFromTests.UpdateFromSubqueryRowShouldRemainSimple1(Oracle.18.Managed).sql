-- Oracle.18.Managed Oracle.Managed Oracle12

UPDATE
	"NewEntities" u1
SET
	("Value1", "Value2") = (
		SELECT
			n3_1."RelatedValue1",
			n3_1."RelatedValue2" + n2_1."Value2"
		FROM
			(
				SELECT
					1 as "c1"
				FROM SYS.DUAL
			) t1
				OUTER APPLY (
					SELECT
						n2."Value2",
						n2."id",
						n2."Value3"
					FROM
						"UpdatedEntities" n2
					WHERE
						n2."id" = u1."id" AND ROWNUM <= 1
				) n2_1
				OUTER APPLY (
					SELECT
						n3."RelatedValue1",
						n3."RelatedValue2"
					FROM
						"UpdateRelation" n3
					WHERE
						n2_1."id" IS NOT NULL AND
						u1."Value1" = n3."id" AND
						n3."RelatedValue3" = n2_1."Value3" AND
						ROWNUM <= 1
				) n3_1
	)
WHERE
	u1."id" = 7

