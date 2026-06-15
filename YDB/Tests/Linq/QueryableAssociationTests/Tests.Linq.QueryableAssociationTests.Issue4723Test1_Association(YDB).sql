-- YDB Ydb

SELECT
	t5.Id as Id,
	t2.ExpressionMethod as ExpressionMethod,
	t4.Association as Association
FROM
	Issue4723Table1 t5
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
						Issue4723Table2 se
				) t1
			WHERE
				t1.rn = 1
		) t2 ON t2.Id = t5.Id
		LEFT JOIN (
			SELECT
				t3.Association as Association,
				t3.Id as Id
			FROM
				(
					SELECT
						a_Association.`Value` as Association,
						ROW_NUMBER() OVER (PARTITION BY a_Association.Id ORDER BY a_Association.Id) as rn,
						a_Association.Id as Id
					FROM
						Issue4723Table2 a_Association
				) t3
			WHERE
				t3.rn = 1
		) t4 ON t4.Id = t5.Id

