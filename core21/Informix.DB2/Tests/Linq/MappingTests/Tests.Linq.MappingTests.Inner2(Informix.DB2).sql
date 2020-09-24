BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 1 AND p.Value1 = 1

