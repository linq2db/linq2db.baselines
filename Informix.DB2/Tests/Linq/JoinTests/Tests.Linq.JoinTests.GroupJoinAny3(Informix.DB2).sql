BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ParentID,
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				Child c_1
			WHERE
				p.ParentID = c_1.ParentID
		)
			THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM
	Parent p

