-- YDB Ydb
DECLARE $year Int32
SET     $year = 2000

SELECT
	p.ParentID as ParentID,
	t2.GrandChildID as GrandChildID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				g_1.GrandChildID as GrandChildID,
				g_1.ParentID as ParentID
			FROM
				Child t1
					RIGHT JOIN GrandChild g_1 ON g_1.ChildID = t1.ChildID
			WHERE
				DateTime::GetYear(CurrentUtcTimestamp()) > $year
		) t2 ON p.ParentID = t2.ParentID

