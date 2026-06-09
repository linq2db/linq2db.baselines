-- YDB Ydb

SELECT DISTINCT
	t2.Value_1 as Value_1
FROM
	Issue4160Person pe
		LEFT JOIN (
			SELECT
				t1.Value_1 as Value_1,
				t1.Code as Code
			FROM
				(
					SELECT
						cc.Name as Value_1,
						ROW_NUMBER() OVER (PARTITION BY cc.Code ORDER BY cc.Code) as rn,
						cc.Code as Code
					FROM
						Issue4160City cc
				) t1
			WHERE
				t1.rn = 1
		) t2 ON t2.Code = pe.Code

