BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	COUNT(left_1.ParentID),
	COUNT(p.ParentID),
	COUNT(*)
FROM
	Parent left_1
		FULL JOIN Parent p ON p.ParentID = left_1.ParentID

