BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ParentID,
	Cast(CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				p.ParentID = c_1.ParentID
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM
	Parent p

