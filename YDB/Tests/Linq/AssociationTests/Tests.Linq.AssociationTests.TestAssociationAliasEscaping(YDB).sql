-- YDB Ydb
SELECT
	c_1.ChildID as ChildID,
	`testaLыi_asParent`.Value1 as Value1
FROM
	Child c_1
		LEFT JOIN Parent `testaLыi_asParent` ON c_1.ParentID = `testaLыi_asParent`.ParentID

