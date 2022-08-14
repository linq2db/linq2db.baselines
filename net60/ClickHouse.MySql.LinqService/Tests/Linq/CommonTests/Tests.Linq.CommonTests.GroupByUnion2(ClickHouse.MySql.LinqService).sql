BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				tt.ParentID as tt
			FROM
				(
					SELECT
						sumOrNull(t1.ID) as Sum_1,
						t1.ParentID as ParentID
					FROM
						(
							SELECT
								c_1.ParentID as ParentID,
								c_1.ChildID as ID
							FROM
								Child c_1
							WHERE
								c_1.ParentID < toInt32(4)
							UNION ALL
							SELECT
								Coalesce(g_1.ParentID, toInt32(0)) as ParentID,
								Coalesce(g_1.GrandChildID, toInt32(0)) as ID
							FROM
								GrandChild g_1
							WHERE
								g_1.ParentID >= toInt32(4)
						) t1
					GROUP BY
						t1.ParentID
				) tt
			WHERE
				(tt.Sum_1 <> toInt32(0) OR tt.Sum_1 IS NULL)
		) t2 ON p.ParentID = t2.tt

