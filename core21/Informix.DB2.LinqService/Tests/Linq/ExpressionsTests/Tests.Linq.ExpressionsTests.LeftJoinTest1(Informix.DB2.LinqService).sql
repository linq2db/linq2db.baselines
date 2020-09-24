BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.ParentID,
	t.ChildID,
	gr.ParentID,
	gr.Value1
FROM
	Child t
		LEFT JOIN Parent gr ON t.ParentID = gr.ParentID

