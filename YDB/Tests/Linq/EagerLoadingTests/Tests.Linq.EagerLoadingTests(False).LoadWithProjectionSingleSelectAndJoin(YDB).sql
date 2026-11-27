-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.ChildId as ChildId,
	a_Child.Id as Id_1,
	a_Child.Name as Name
FROM
	NestedProjectionParent t1
		LEFT JOIN NestedProjectionChild a_Child ON t1.ChildId = a_Child.Id

