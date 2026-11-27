-- YDB Ydb
SELECT
	p.Id as Id,
	a_Child.Id as Id_1,
	a_Child.Name as Name
FROM
	NestedProjectionParent p
		LEFT JOIN NestedProjectionChild a_Child ON p.ChildId = a_Child.Id

