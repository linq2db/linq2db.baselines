BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				c_1.ParentID = p.ParentID
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM
	Parent p

