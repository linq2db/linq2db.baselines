-- YDB Ydb

SELECT
	f.Id as Id,
	ft.Id as Id_1,
	ft.FactId as FactId,
	ft.Name as Name
FROM
	Tag ft
		FULL JOIN Fact f ON ft.FactId = f.Id
WHERE
	f.Id > 3 OR ft.FactId > 3

