BeforeExecute
-- Informix.DB2 Informix

SELECT DISTINCT
	Nvl(p.Value1, Mod(p.ParentID, 2)),
	3
FROM
	Parent p

