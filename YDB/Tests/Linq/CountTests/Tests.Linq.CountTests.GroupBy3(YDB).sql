-- YDB Ydb

SELECT
	g_2.ParentID as ParentID,
	MIN(g_2.ChildID) as ChildMin,
	COUNT(CASE
		WHEN g_2.ChildID > 25 THEN 1
		ELSE NULL
	END) as ChildCount
FROM
	(
		SELECT
			g_1.ParentID + 1 as ParentID,
			g_1.ChildID as ChildID
		FROM
			Child g_1
		WHERE
			g_1.ParentID > 0
	) g_2
GROUP BY
	g_2.ParentID

