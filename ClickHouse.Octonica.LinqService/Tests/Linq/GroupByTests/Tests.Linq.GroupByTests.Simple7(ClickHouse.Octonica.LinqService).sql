BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	gr.ParentID,
	gr.ChildID
FROM
	GrandChild gr
GROUP BY
	gr.ParentID,
	gr.ChildID

