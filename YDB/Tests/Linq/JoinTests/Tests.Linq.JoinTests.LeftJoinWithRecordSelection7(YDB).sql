-- YDB Ydb

SELECT
	fact_1.Id as Id,
	leftTag.Id as Id_1,
	leftTag.FactId as FactId,
	leftTag.Name as Name
FROM
	Fact fact_1
		LEFT JOIN Tag leftTag ON leftTag.FactId = fact_1.Id
WHERE
	fact_1.Id > 3
ORDER BY
	fact_1.Id

