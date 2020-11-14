BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip_1 Int32
SET     @skip_1 = 4
DECLARE @skip_1_1 Int32
SET     @skip_1_1 = 3

SELECT
	t3."FirstName",
	t3."PersonID",
	t3."LastName",
	t3."MiddleName",
	t3."Gender"
FROM
	(
		SELECT
			t2."FirstName",
			t2."PersonID",
			t2."LastName",
			t2."MiddleName",
			t2."Gender",
			ROWNUM as RN
		FROM
			(
				SELECT
					t1."FirstName",
					t1."PersonID",
					t1."LastName",
					t1."MiddleName",
					t1."Gender"
				FROM
					"Person" t1
				ORDER BY
					t1."LastName"
			) t2
		WHERE
			ROWNUM <= :skip_1
	) t3
WHERE
	t3.RN > :skip_1_1

