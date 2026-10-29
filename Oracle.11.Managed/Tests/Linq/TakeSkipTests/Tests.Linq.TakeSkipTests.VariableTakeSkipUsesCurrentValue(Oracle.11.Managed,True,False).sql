-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	t1.ID
FROM
	(
		SELECT
			p."PersonID" as ID
		FROM
			"Person" p
		ORDER BY
			p."PersonID"
	) t1
WHERE
	ROWNUM <= :take
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @n Int32
SET     @n = 1

SELECT
	t1.ID
FROM
	(
		SELECT
			p."PersonID" as ID
		FROM
			"Person" p
		ORDER BY
			p."PersonID"
	) t1
WHERE
	ROWNUM <= :n
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 1

SELECT
	t2.ID
FROM
	(
		SELECT
			t1.ID,
			ROWNUM as RN
		FROM
			(
				SELECT
					p."PersonID" as ID
				FROM
					"Person" p
				ORDER BY
					p."PersonID"
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @n Int32
SET     @n = 1

SELECT
	t2.ID
FROM
	(
		SELECT
			t1.ID,
			ROWNUM as RN
		FROM
			(
				SELECT
					p."PersonID" as ID
				FROM
					"Person" p
				ORDER BY
					p."PersonID"
			) t1
	) t2
WHERE
	t2.RN > :n
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1

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
					t1."PersonID"
			) t2
		WHERE
			ROWNUM <= (:skip + 1)
	) t3
WHERE
	t3.RN > :skip
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
DECLARE @n Int32
SET     @n = 1

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
					t1."PersonID"
			) t2
		WHERE
			ROWNUM <= (:n + 1)
	) t3
WHERE
	t3.RN > :n
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1

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
					t1."PersonID"
			) t2
		WHERE
			ROWNUM <= (:skip + 1)
	) t3
WHERE
	t3.RN > :skip
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1
DECLARE @skip_1 Int32
SET     @skip_1 = 1

SELECT
	t2.ID
FROM
	(
		SELECT
			t1.ID,
			ROWNUM as RN
		FROM
			(
				SELECT
					p."PersonID" as ID
				FROM
					"Person" p
				ORDER BY
					p."PersonID"
			) t1
	) t2
WHERE
	t2.RN > :skip + :skip_1
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	t1.ID
FROM
	(
		SELECT
			p."PersonID" as ID
		FROM
			"Person" p
		ORDER BY
			p."PersonID"
	) t1
WHERE
	ROWNUM <= :take
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	t1.ID
FROM
	(
		SELECT
			p."PersonID" as ID
		FROM
			"Person" p
		ORDER BY
			p."PersonID"
	) t1
WHERE
	ROWNUM <= :take
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @n Int32
SET     @n = 2

SELECT
	t1.ID
FROM
	(
		SELECT
			p."PersonID" as ID
		FROM
			"Person" p
		ORDER BY
			p."PersonID"
	) t1
WHERE
	ROWNUM <= :n
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 2
DECLARE @take Int32
SET     @take = 1

SELECT
	t2.ID
FROM
	(
		SELECT
			t1.ID,
			ROWNUM as RN
		FROM
			(
				SELECT
					p."PersonID" as ID
				FROM
					"Person" p
				ORDER BY
					p."PersonID"
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @n Int32
SET     @n = 2

SELECT
	t2.ID
FROM
	(
		SELECT
			t1.ID,
			ROWNUM as RN
		FROM
			(
				SELECT
					p."PersonID" as ID
				FROM
					"Person" p
				ORDER BY
					p."PersonID"
			) t1
	) t2
WHERE
	t2.RN > :n
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 2

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
					t1."PersonID"
			) t2
		WHERE
			ROWNUM <= (:skip + 1)
	) t3
WHERE
	t3.RN > :skip
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
DECLARE @n Int32
SET     @n = 2

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
					t1."PersonID"
			) t2
		WHERE
			ROWNUM <= (:n + 1)
	) t3
WHERE
	t3.RN > :n
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 2

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
					t1."PersonID"
			) t2
		WHERE
			ROWNUM <= (:skip + 1)
	) t3
WHERE
	t3.RN > :skip
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1
DECLARE @skip_1 Int32
SET     @skip_1 = 2

SELECT
	t2.ID
FROM
	(
		SELECT
			t1.ID,
			ROWNUM as RN
		FROM
			(
				SELECT
					p."PersonID" as ID
				FROM
					"Person" p
				ORDER BY
					p."PersonID"
			) t1
	) t2
WHERE
	t2.RN > :skip + :skip_1
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	t1.ID
FROM
	(
		SELECT
			p."PersonID" as ID
		FROM
			"Person" p
		ORDER BY
			p."PersonID"
	) t1
WHERE
	ROWNUM <= :take
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	t1.ID
FROM
	(
		SELECT
			p."PersonID" as ID
		FROM
			"Person" p
		ORDER BY
			p."PersonID"
	) t1
WHERE
	ROWNUM <= :take
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @n Int32
SET     @n = 3

SELECT
	t1.ID
FROM
	(
		SELECT
			p."PersonID" as ID
		FROM
			"Person" p
		ORDER BY
			p."PersonID"
	) t1
WHERE
	ROWNUM <= :n
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 3
DECLARE @take Int32
SET     @take = 1

SELECT
	t2.ID
FROM
	(
		SELECT
			t1.ID,
			ROWNUM as RN
		FROM
			(
				SELECT
					p."PersonID" as ID
				FROM
					"Person" p
				ORDER BY
					p."PersonID"
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @n Int32
SET     @n = 3

SELECT
	t2.ID
FROM
	(
		SELECT
			t1.ID,
			ROWNUM as RN
		FROM
			(
				SELECT
					p."PersonID" as ID
				FROM
					"Person" p
				ORDER BY
					p."PersonID"
			) t1
	) t2
WHERE
	t2.RN > :n
ORDER BY
	t2.ID

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
					t1."PersonID"
			) t2
		WHERE
			ROWNUM <= (:skip + 1)
	) t3
WHERE
	t3.RN > :skip
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
DECLARE @n Int32
SET     @n = 3

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
					t1."PersonID"
			) t2
		WHERE
			ROWNUM <= (:n + 1)
	) t3
WHERE
	t3.RN > :n
ORDER BY
	t3.ID

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
					t1."PersonID"
			) t2
		WHERE
			ROWNUM <= (:skip + 1)
	) t3
WHERE
	t3.RN > :skip
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1
DECLARE @skip_1 Int32
SET     @skip_1 = 3

SELECT
	t2.ID
FROM
	(
		SELECT
			t1.ID,
			ROWNUM as RN
		FROM
			(
				SELECT
					p."PersonID" as ID
				FROM
					"Person" p
				ORDER BY
					p."PersonID"
			) t1
	) t2
WHERE
	t2.RN > :skip + :skip_1
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	t1.ID
FROM
	(
		SELECT
			p."PersonID" as ID
		FROM
			"Person" p
		ORDER BY
			p."PersonID"
	) t1
WHERE
	ROWNUM <= :take
ORDER BY
	t1.ID

