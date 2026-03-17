-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	t2.ID,
	t2."LastName"
FROM
	(
		SELECT
			t1.ID,
			t1."LastName",
			ROWNUM as RN
		FROM
			(
				SELECT
					r_1.ID,
					r_1."LastName"
				FROM
					(
						SELECT DISTINCT
							r."FirstName",
							r."PersonID" as ID,
							r."LastName",
							r."MiddleName",
							r."Gender"
						FROM
							"Person" r
					) r_1
				ORDER BY
					r_1."FirstName"
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

-- Oracle.11.Managed Oracle11

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

