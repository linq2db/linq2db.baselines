BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	gr.ParentID,
	gr.ChildID
FROM
	GrandChild gr
GROUP BY
	gr.ParentID,
	gr.ChildID

