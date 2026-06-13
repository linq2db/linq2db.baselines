-- YDB Ydb

SELECT
	ch.ParentID as ParentID,
	ch.ChildID as ChildID
FROM
	Child ch
		INNER JOIN Parent p ON p.ParentID = Unwrap(CAST(Math::Floor(Unwrap(CAST(ch.ChildID AS Double)) / 10) AS Int32))
WHERE
	ch.ParentID = p.ParentID

