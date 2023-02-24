BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	Cast(CASE
		WHEN t1.ParentID > 0 AND t1.ChildID <> t1.ParentID
			THEN 't'
		ELSE 'f'
	END as BOOLEAN) DESC,
	t1.ChildID

