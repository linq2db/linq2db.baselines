BeforeExecute
-- Informix.DB2 Informix

SELECT
	Nvl(Min(t1.ParentID), 10)
FROM
	Parent t1

