BeforeExecute
-- Informix.DB2 Informix

SELECT
	Nvl(MIN(gr.ParentID), 10)
FROM
	Parent gr

