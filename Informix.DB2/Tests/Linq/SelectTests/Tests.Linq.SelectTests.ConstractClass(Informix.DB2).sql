BeforeExecute
-- Informix.DB2 Informix

SELECT
	f.ParentID,
	Lower(To_Char(f.Value1))
FROM
	Parent f

