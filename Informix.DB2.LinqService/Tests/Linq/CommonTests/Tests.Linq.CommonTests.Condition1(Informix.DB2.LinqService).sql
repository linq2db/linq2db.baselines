BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	CASE
		WHEN CHAR_LENGTH(p.FirstName || '.') <> 1 THEN p.FirstName
		WHEN NOT (p.MiddleName IS NULL OR CHAR_LENGTH(p.MiddleName || '.') = 1)
			THEN p.MiddleName
		ELSE p.LastName
	END
FROM
	Person p

