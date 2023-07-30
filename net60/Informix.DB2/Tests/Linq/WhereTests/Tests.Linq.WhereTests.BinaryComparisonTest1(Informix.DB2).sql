﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person t1
			WHERE
				CASE
					WHEN t1.FirstName = t1.FirstName
						THEN 't'
					ELSE 'f'
				END = CASE
					WHEN t1.MiddleName <> t1.LastName
						THEN 't'
					ELSE 'f'
				END
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM table(set{1})

