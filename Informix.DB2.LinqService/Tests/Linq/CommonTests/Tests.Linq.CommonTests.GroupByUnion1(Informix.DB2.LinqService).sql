BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	tt.Key_1,
	SUM(tt.ID)
FROM
	(
		SELECT
			gr.ParentID as Key_1,
			gr.ChildID as ID
		FROM
			Child gr
		WHERE
			gr.ParentID < 4
		UNION ALL
		SELECT
			Nvl(g_1.ParentID, 0) as Key_1,
			Nvl(g_1.GrandChildID, 0) as ID
		FROM
			GrandChild g_1
		WHERE
			g_1.ParentID >= 4
	) tt
GROUP BY
	tt.Key_1
HAVING
	SUM(tt.ID) <> 0

