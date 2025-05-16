BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN Length(p.FirstName || '.') <> 1 THEN p.FirstName
		WHEN NOT (p.MiddleName IS NULL OR Length(p.MiddleName || '.') - 1 = 0)
			THEN p.MiddleName
		ELSE p.LastName
	END
FROM
	Person p

