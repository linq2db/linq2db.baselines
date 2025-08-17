BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	MIN(gr.ParentID),
	MAX(gr.ParentID)
FROM
	Parent gr

