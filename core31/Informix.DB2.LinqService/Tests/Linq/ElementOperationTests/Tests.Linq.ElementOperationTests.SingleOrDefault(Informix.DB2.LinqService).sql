BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 100

