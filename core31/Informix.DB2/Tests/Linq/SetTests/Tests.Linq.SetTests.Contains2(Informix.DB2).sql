BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN p.ParentID IN (
			SELECT
				c_1.ParentID
			FROM
				Child c_1
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM
	Parent p

