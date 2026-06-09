-- YDB Ydb

SELECT
	a_Parent_1.ParentID as ParentID,
	a_Parent_1.Value1 as Value1
FROM
	(
		SELECT
			a_Parent.ParentID as ParentID
		FROM
			Child g_1
				LEFT JOIN Parent a_Parent ON g_1.ParentID = a_Parent.ParentID
		GROUP BY
			a_Parent.ParentID
		HAVING
			COUNT(*) > 2
	) g_2
		CROSS JOIN Child ch
		LEFT JOIN Parent a_Parent_1 ON ch.ParentID = a_Parent_1.ParentID
WHERE
	g_2.ParentID = a_Parent_1.ParentID OR g_2.ParentID IS NULL AND a_Parent_1.ParentID IS NULL

