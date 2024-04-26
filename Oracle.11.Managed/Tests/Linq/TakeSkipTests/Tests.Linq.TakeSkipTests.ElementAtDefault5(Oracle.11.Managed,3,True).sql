﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 3

SELECT
	t3."FirstName",
	t3.ID,
	t3."LastName",
	t3."MiddleName",
	t3."Gender"
FROM
	(
		SELECT
			t2."FirstName",
			t2.ID,
			t2."LastName",
			t2."MiddleName",
			t2."Gender",
			ROWNUM as RN
		FROM
			(
				SELECT
					t1."FirstName",
					t1."PersonID" as ID,
					t1."LastName",
					t1."MiddleName",
					t1."Gender"
				FROM
					"Person" t1
				ORDER BY
					t1."LastName"
			) t2
		WHERE
			ROWNUM <= 4
	) t3
WHERE
	t3.RN > :skip

