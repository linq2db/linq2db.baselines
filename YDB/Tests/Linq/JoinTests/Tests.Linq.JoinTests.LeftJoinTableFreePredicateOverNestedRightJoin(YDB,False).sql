-- YDB Ydb
DECLARE $date Timestamp -- DateTime2
SET     $date = Timestamp('2000-01-01T00:00:00.000000Z')

SELECT
	p.ParentID as ParentID,
	t1.GrandChildID as GrandChildID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				g_1.ParentID as ParentID,
				g_1.GrandChildID as GrandChildID
			FROM
				Child x
					RIGHT JOIN GrandChild g_1 ON g_1.ChildID = x.ChildID
			WHERE
				CurrentUtcTimestamp() < $date
		) t1 ON p.ParentID = t1.ParentID

