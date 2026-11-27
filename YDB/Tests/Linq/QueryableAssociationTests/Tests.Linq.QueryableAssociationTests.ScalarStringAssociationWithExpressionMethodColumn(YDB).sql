-- YDB Ydb
SELECT
	t3.Id as Id,
	t2.ExpressionMethod as ExpressionMethod
FROM
	StringAssociationOwner t3
		LEFT JOIN (
			SELECT
				t1.ExpressionMethod as ExpressionMethod,
				t1.Id as Id
			FROM
				(
					SELECT
						se.`Value` as ExpressionMethod,
						ROW_NUMBER() OVER (PARTITION BY se.Id ORDER BY se.Id) as rn,
						se.Id as Id
					FROM
						StringAssociationValue se
				) t1
			WHERE
				t1.rn = 1
		) t2 ON t2.Id = t3.Id

