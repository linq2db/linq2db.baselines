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
						sumOrNull(t1.ChildID) as Sum_1,
						t1.ParentID as ParentID
					FROM
						Child t1
					GROUP BY
						t1.ParentID
				) tt
			WHERE
				(tt.Sum_1 <> toInt32(0) OR tt.Sum_1 IS NULL)
		) t2 ON p.ParentID = t2.tt

