BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	Nvl(MIN(gr.ParentID), 10)
FROM
	Parent gr

