-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

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
			t1.ID,
			t1."LastName",
			t1."MiddleName",
			t1."Gender",
			ROWNUM as RN
		FROM
			(
				SELECT
					x."FirstName",
					x."PersonID" as ID,
					x."LastName",
					x."MiddleName",
					x."Gender"
				FROM
					"Person" x
				WHERE
					x."FirstName" LIKE 'J%' ESCAPE '~'
				ORDER BY
					x."PersonID" DESC
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip
ORDER BY
	t2.ID DESC

