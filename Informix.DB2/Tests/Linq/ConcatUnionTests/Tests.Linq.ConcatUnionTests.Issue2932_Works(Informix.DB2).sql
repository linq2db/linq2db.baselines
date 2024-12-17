BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ChildID,
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				GrandChild a_GrandChildren
			WHERE
				p.ParentID = a_GrandChildren.ParentID AND p.ChildID = a_GrandChildren.ChildID
		)
			THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM
	Child p
UNION ALL
SELECT
	p_1.ChildID,
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				GrandChild a_GrandChildren_1
			WHERE
				p_1.ParentID = a_GrandChildren_1.ParentID AND p_1.ChildID = a_GrandChildren_1.ChildID
		)
			THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM
	Child p_1

