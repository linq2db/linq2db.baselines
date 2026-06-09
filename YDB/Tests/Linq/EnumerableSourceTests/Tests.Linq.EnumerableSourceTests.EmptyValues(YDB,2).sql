-- YDB Ydb

SELECT
	t.Id as Id,
	t.`Value` as Value_1
FROM
	TableToInsert t
		INNER JOIN (SELECT CAST(NULL AS Int32) Id, CAST(NULL AS Text) `Value` FROM (SELECT 1) AS dual WHERE 1 = 0) r ON t.Id = r.Id
WHERE
	t.`Value` = r.`Value` OR t.`Value` IS NULL AND r.`Value` IS NULL

