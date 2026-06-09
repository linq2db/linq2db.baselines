-- YDB Ydb

SELECT
	fact_1.Id as Id,
	t1.Id as Id_1,
	t1.FactId as FactId,
	t1.Name as Name
FROM
	Tag t1
		FULL JOIN Fact fact_1 ON t1.FactId = fact_1.Id
WHERE
	fact_1.Id > 3 OR t1.FactId > 3

