BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID IN (1, 2)

