-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.ChildId as ChildId,
	a_Child.Id as Id_1,
	a_Child.Name as Name
FROM
	Issue3140Parent t1
		LEFT JOIN Issue3140Child a_Child ON t1.ChildId = a_Child.Id

