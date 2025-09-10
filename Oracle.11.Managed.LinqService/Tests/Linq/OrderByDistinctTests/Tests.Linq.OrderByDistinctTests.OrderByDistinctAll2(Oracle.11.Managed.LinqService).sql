BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	t2.ID,
	t2."LastName",
	t2."FirstName"
FROM
	(
		SELECT
			t1.ID,
			t1."LastName",
			t1."FirstName",
			ROWNUM as RN
		FROM
			(
				SELECT
					r."PersonID" as ID,
					r."LastName",
					r."FirstName"
				FROM
					"Person" r
				ORDER BY
					r."FirstName"
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip
ORDER BY
	t2."FirstName"

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

