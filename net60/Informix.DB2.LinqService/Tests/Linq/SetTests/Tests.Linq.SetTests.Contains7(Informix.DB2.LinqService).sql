BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN 11 IN (
			SELECT
				c_1.ParentID
			FROM
				Child c_1
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM table(set{1})

