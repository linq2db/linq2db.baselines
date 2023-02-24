BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ChildID,
	Cast(CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				GrandChild t1
			WHERE
				p.ParentID = t1.ParentID AND p.ChildID = t1.ChildID
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM
	Child p
UNION ALL
SELECT
	p_1.ChildID,
	Cast(CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				GrandChild t2
			WHERE
				p_1.ParentID = t2.ParentID AND p_1.ChildID = t2.ChildID
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM
	Child p_1

