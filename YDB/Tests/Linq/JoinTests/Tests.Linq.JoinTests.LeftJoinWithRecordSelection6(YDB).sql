-- YDB Ydb

SELECT
	f.Id as Id,
	t.Id as Id_1,
	t.FactId as FactId,
	t.Name as Name
FROM
	Fact f
		LEFT JOIN Tag t ON t.FactId = f.Id
WHERE
	f.Id > 3
ORDER BY
	f.Id

