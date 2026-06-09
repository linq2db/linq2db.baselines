-- YDB Ydb

SELECT DISTINCT
	gr.ParentID as ParentID,
	gr.ChildID as ChildID
FROM
	GrandChild gr

