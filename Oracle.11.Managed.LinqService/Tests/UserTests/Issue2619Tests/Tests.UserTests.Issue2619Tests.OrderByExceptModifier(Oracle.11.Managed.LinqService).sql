BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @take Int32
SET     @take = 1

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
			t2."Gender"
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
			ROWNUM <= :take
	) t3
MINUS
SELECT
	t6."FirstName",
	t6.ID,
	t6."LastName",
	t6."MiddleName",
	t6."Gender"
FROM
	(
		SELECT
			t5."FirstName",
			t5.ID,
			t5."LastName",
			t5."MiddleName",
			t5."Gender"
		FROM
			(
				SELECT
					t4."FirstName",
					t4."PersonID" as ID,
					t4."LastName",
					t4."MiddleName",
					t4."Gender"
				FROM
					"Person" t4
				ORDER BY
					t4."LastName"
			) t5
		WHERE
			ROWNUM <= :take
	) t6

