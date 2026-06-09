-- YDB Ydb

SELECT
	a_1.Id as Id,
	a_1.NullValue as NullValue
FROM
	(
		SELECT
			a.Id as Id,
			CASE
				WHEN a.NullValue IS NOT NULL THEN a.NullValue
				ELSE 0
			END as KEYNUMB,
			a.NullValue as NullValue
		FROM
			SampleClass a
	) a_1
WHERE
	a_1.Id = 0 AND a_1.KEYNUMB = 0 OR a_1.Id = 1 AND a_1.KEYNUMB = 1 OR
	a_1.Id = 2 AND a_1.KEYNUMB = 2

