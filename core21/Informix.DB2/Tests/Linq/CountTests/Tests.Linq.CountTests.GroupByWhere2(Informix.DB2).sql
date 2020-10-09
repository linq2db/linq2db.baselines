BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t1.ParentID
FROM
	Child t1
GROUP BY
	t1.ParentID
HAVING
	Count(*) > 2

