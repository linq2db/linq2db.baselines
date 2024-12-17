BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				Child c_1
			WHERE
				p.ParentID - 1 = c_1.ParentID
		)
			THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM
	Parent p

