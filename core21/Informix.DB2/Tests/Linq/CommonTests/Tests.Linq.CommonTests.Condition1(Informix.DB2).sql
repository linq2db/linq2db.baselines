﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN (p.FirstName IS NULL OR Length(p.FirstName) = 0)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN),
	p.FirstName,
	Cast(CASE
		WHEN (p.MiddleName IS NULL OR Length(p.MiddleName) = 0)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN),
	p.MiddleName,
	p.LastName
FROM
	Person p

