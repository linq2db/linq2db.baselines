-- YDB Ydb

SELECT
	a_ChildInner.ParentID as ParentID
FROM
	NotNullParent p
		INNER JOIN NotNullChild a_ChildInner ON p.ID = a_ChildInner.ParentID

