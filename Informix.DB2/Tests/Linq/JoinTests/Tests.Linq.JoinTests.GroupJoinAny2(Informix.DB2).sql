BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				Child t1_1
			WHERE
				t1.ParentID = t1_1.ParentID
		)
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM
	Parent t1

