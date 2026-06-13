-- YDB Ydb

SELECT
	r.Id as Id,
	r.`Value` as Value_1
FROM
	ComplexPredicate r
WHERE
	(r.`Value` = '123'u AND r.`Value` IS NOT NULL) = (r.`Value` = '1'u AND r.`Value` IS NOT NULL OR r.`Value` = 'test'u AND r.`Value` IS NOT NULL)
ORDER BY
	r.Id

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Value` as Value_1
FROM
	ComplexPredicate t1

