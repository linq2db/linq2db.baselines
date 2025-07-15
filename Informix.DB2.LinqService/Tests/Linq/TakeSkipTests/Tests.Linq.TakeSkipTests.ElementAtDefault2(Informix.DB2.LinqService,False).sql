BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 300000 FIRST 1
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID > 1

