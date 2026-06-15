-- YDB Ydb

SELECT
	e.Id as Id,
	e.RecSrc as RecSrc,
	e.`Value` as Value_1
FROM
	`Entry` e
WHERE
	(e.RecSrc, e.`Value`) = ('default'u, 2007)

