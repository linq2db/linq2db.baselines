BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN LENGTH(p.FirstName || '.') <> 1 THEN p.FirstName
		WHEN NOT (p.MiddleName IS NULL OR LENGTH(p.MiddleName || '.') - 1 = 0)
			THEN p.MiddleName
		ELSE p.LastName
	END
FROM
	Person p

