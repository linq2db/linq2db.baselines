BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p_1.ParentID,
	p_1.Value1
FROM
	(
		SELECT
			p.ParentID as ParentID,
			p.Value1 as Value1
		FROM
			Child c_1
				INNER JOIN (
					SELECT /* Parent */
						t1.ParentID as ParentID,
						t1.Value1 as Value1
					FROM
						Parent t1
				) p ON c_1.ParentID = p.ParentID
	) p_1

