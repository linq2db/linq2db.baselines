-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 0

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
	ROWNUM <= :Count
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 0

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
	t2.RN > :Count
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 0
DECLARE @p Int32
SET     @p = 1

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
			ROWNUM <= (:Count + :p)
	) t2
WHERE
	t2.RN > :Count
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @count Int32
SET     @count = 0

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
	ROWNUM <= :count
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @count Int32
SET     @count = 0

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
	t2.RN > :count
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 0

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
			ROWNUM <= (:Count + 1)
	) t3
WHERE
	t3.RN > :Count
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
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
	ROWNUM <= 0
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
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
	t2.RN > 0
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
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
			ROWNUM <= 1
	) t2
WHERE
	t2.RN > 0
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
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
			ROWNUM <= 1
	) t3
WHERE
	t3.RN > 0
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
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
			ROWNUM <= 1
	) t3
WHERE
	t3.RN > 0
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 2

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
	ROWNUM <= :Count
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 2

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
	t2.RN > :Count
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 2
DECLARE @p Int32
SET     @p = 3

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
			ROWNUM <= (:Count + :p)
	) t2
WHERE
	t2.RN > :Count
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @count Int32
SET     @count = 2

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
	ROWNUM <= :count
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @count Int32
SET     @count = 2

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
	t2.RN > :count
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 2

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
			ROWNUM <= (:Count + 1)
	) t3
WHERE
	t3.RN > :Count
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
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
	ROWNUM <= 2
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
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
	t2.RN > 2
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
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
			ROWNUM <= 5
	) t2
WHERE
	t2.RN > 2
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
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
			ROWNUM <= 3
	) t3
WHERE
	t3.RN > 2
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
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
			ROWNUM <= 3
	) t3
WHERE
	t3.RN > 2
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 0

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
	ROWNUM <= :Count
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 0

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
	t2.RN > :Count
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 0
DECLARE @p Int32
SET     @p = 1

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
			ROWNUM <= (:Count + :p)
	) t2
WHERE
	t2.RN > :Count
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @count Int32
SET     @count = 0

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
	ROWNUM <= :count
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @count Int32
SET     @count = 0

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
	t2.RN > :count
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 0

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
			ROWNUM <= (:Count + 1)
	) t3
WHERE
	t3.RN > :Count
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
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
	ROWNUM <= 0
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
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
	t2.RN > 0
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
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
			ROWNUM <= 1
	) t2
WHERE
	t2.RN > 0
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
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
			ROWNUM <= 1
	) t3
WHERE
	t3.RN > 0
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
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
			ROWNUM <= 1
	) t3
WHERE
	t3.RN > 0
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 1

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
	ROWNUM <= :Count
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 1

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
	t2.RN > :Count
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 1
DECLARE @p Int32
SET     @p = 2

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
			ROWNUM <= (:Count + :p)
	) t2
WHERE
	t2.RN > :Count
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @count Int32
SET     @count = 1

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
	ROWNUM <= :count
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @count Int32
SET     @count = 1

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
	t2.RN > :count
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 1

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
			ROWNUM <= (:Count + 1)
	) t3
WHERE
	t3.RN > :Count
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
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
	ROWNUM <= 1
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
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
	t2.RN > 1
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
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
			ROWNUM <= 3
	) t2
WHERE
	t2.RN > 1
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
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
			ROWNUM <= 2
	) t3
WHERE
	t3.RN > 1
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
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
			ROWNUM <= 2
	) t3
WHERE
	t3.RN > 1
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 3

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
	ROWNUM <= :Count
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 3

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
	t2.RN > :Count
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 3
DECLARE @p Int32
SET     @p = 4

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
			ROWNUM <= (:Count + :p)
	) t2
WHERE
	t2.RN > :Count
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @count Int32
SET     @count = 3

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
	ROWNUM <= :count
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @count Int32
SET     @count = 3

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
	t2.RN > :count
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 3

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
			ROWNUM <= (:Count + 1)
	) t3
WHERE
	t3.RN > :Count
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
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
	ROWNUM <= 3
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
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
	t2.RN > 3
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
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
			ROWNUM <= 7
	) t2
WHERE
	t2.RN > 3
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
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
			ROWNUM <= 4
	) t3
WHERE
	t3.RN > 3
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
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
			ROWNUM <= 4
	) t3
WHERE
	t3.RN > 3
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 0

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
	ROWNUM <= :Count
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 0

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
	t2.RN > :Count
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 0
DECLARE @p Int32
SET     @p = 1

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
			ROWNUM <= (:Count + :p)
	) t2
WHERE
	t2.RN > :Count
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @count Int32
SET     @count = 0

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
	ROWNUM <= :count
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
DECLARE @count Int32
SET     @count = 0

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
	t2.RN > :count
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
DECLARE @Count Int32
SET     @Count = 0

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
			ROWNUM <= (:Count + 1)
	) t3
WHERE
	t3.RN > :Count
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
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
	ROWNUM <= 0
ORDER BY
	t1.ID

-- Oracle.11.Managed Oracle11
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
	t2.RN > 0
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
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
			ROWNUM <= 1
	) t2
WHERE
	t2.RN > 0
ORDER BY
	t2.ID

-- Oracle.11.Managed Oracle11
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
			ROWNUM <= 1
	) t3
WHERE
	t3.RN > 0
ORDER BY
	t3.ID

-- Oracle.11.Managed Oracle11
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
			ROWNUM <= 1
	) t3
WHERE
	t3.RN > 0
ORDER BY
	t3.ID

