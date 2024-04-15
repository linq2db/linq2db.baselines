BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
		CROSS JOIN Child ch

