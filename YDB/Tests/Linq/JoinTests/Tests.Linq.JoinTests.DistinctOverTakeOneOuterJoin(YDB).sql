-- YDB Ydb
SELECT DISTINCT
	cc_1.Name as Name
FROM
	LookupPerson t2
		LEFT JOIN (
			SELECT
				t1.Name as Name,
				t1.Code as Code
			FROM
				(
					SELECT
						cc.Name as Name,
						ROW_NUMBER() OVER (PARTITION BY cc.Code ORDER BY cc.Code) as rn,
						cc.Code as Code
					FROM
						LookupCity cc
				) t1
			WHERE
				t1.rn = 1
		) cc_1 ON cc_1.Code = t2.Code

