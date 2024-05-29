﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(1) -- String
SET     @p = 'O'

SELECT
	i_2."LastName"
FROM
	(
		SELECT
			CASE
				WHEN i."MiddleName" IS NULL THEN 'M'
				ELSE 'O'
			END as "Gender",
			i."FirstName",
			i."LastName"
		FROM
			"Person" i
		UNION ALL
		SELECT
			CASE
				WHEN i_1."MiddleName" IS NULL THEN 'M'
				ELSE 'O'
			END as "Gender",
			i_1."FirstName",
			i_1."LastName"
		FROM
			"Person" i_1
	) i_2
WHERE
	i_2."Gender" = :p
ORDER BY
	i_2."FirstName" DESC

