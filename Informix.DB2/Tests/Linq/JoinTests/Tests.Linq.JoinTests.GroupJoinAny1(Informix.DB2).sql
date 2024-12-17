BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				Child c_1
			WHERE
				t1.ParentID = c_1.ParentID
		)
			THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM
	Parent t1

