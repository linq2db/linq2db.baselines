-- Informix.DB2 Informix
SELECT
	x.ParentID
FROM
	Parent x
WHERE
	CASE
		WHEN (
			SELECT
				MAX(a_Children.ChildID)
			FROM
				Child a_Children
			WHERE
				x.ParentID = a_Children.ParentID
		) = 11
			THEN 'f'::BOOLEAN
		ELSE 't'::BOOLEAN
	END

