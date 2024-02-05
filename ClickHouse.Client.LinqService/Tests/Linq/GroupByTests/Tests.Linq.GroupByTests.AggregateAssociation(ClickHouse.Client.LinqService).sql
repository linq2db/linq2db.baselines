BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	sumOrNull(Coalesce(a_Parent.Value1, toInt32(0)))
FROM
	Child t1
		LEFT JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID
GROUP BY
	t1.ParentID

