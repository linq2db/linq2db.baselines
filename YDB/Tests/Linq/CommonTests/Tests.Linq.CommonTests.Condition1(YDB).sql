-- YDB Ydb

SELECT
	CASE
		WHEN Unwrap(CAST(Unicode::GetLength(p.FirstName) AS Int32)) <> 0
			THEN p.FirstName
		WHEN NOT (p.MiddleName IS NULL OR CAST(Unicode::GetLength(p.MiddleName) AS Int32) = 0)
			THEN p.MiddleName
		ELSE p.LastName
	END as Name
FROM
	Person p

