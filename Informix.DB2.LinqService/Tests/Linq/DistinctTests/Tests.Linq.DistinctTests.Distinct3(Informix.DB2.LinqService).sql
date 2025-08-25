BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT DISTINCT
	Nvl(p.Value1, Mod(p.ParentID, 2)),
	p.Value1
FROM
	Parent p

