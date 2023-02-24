BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @paramCopy Int32
SET     @paramCopy = 1
DECLARE @ID Int32
SET     @ID = 0
DECLARE @ID_1 Int32
SET     @ID_1 = 2

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" p
		WHERE
			p."PersonID" = :paramCopy AND p."PersonID" = t1."PersonID"
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			"Person" p_1
		WHERE
			p_1."PersonID" = :ID AND p_1."PersonID" = t1."PersonID"
	) OR EXISTS(
		SELECT
			*
		FROM
			"Person" p_2
		WHERE
			:ID_1 <> p_2."PersonID" AND p_2."PersonID" = t1."PersonID"
	))

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 3
DECLARE @paramCopy Int32
SET     @paramCopy = 2
DECLARE @ID_1 Int32
SET     @ID_1 = 3

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" p
		WHERE
			:ID <> p."PersonID" AND p."PersonID" = t1."PersonID"
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			"Person" p_1
		WHERE
			:paramCopy = p_1."PersonID" AND p_1."PersonID" = t1."PersonID"
	) OR EXISTS(
		SELECT
			*
		FROM
			"Person" p_2
		WHERE
			:ID_1 <> p_2."PersonID" AND p_2."PersonID" = t1."PersonID"
	))

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 4
DECLARE @ID_1 Int32
SET     @ID_1 = 2
DECLARE @paramCopy Int32
SET     @paramCopy = 3

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" p
		WHERE
			:ID <> p."PersonID" AND p."PersonID" = t1."PersonID"
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			"Person" p_1
		WHERE
			p_1."PersonID" = :ID_1 AND p_1."PersonID" = t1."PersonID"
	) OR EXISTS(
		SELECT
			*
		FROM
			"Person" p_2
		WHERE
			p_2."PersonID" = :paramCopy AND p_2."PersonID" = t1."PersonID"
	))

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @paramCopy Int32
SET     @paramCopy = 1
DECLARE @ID Int32
SET     @ID = 0
DECLARE @ID_1 Int32
SET     @ID_1 = 2

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" p
		WHERE
			p."PersonID" = :paramCopy AND p."PersonID" = t1."PersonID"
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			"Person" p_1
		WHERE
			p_1."PersonID" = :ID AND p_1."PersonID" = t1."PersonID"
	) OR EXISTS(
		SELECT
			*
		FROM
			"Person" p_2
		WHERE
			:ID_1 <> p_2."PersonID" AND p_2."PersonID" = t1."PersonID"
	))

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 4
DECLARE @ID_1 Int32
SET     @ID_1 = 2
DECLARE @paramCopy Int32
SET     @paramCopy = 3

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" p
		WHERE
			:ID <> p."PersonID" AND p."PersonID" = t1."PersonID"
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			"Person" p_1
		WHERE
			p_1."PersonID" = :ID_1 AND p_1."PersonID" = t1."PersonID"
	) OR EXISTS(
		SELECT
			*
		FROM
			"Person" p_2
		WHERE
			p_2."PersonID" = :paramCopy AND p_2."PersonID" = t1."PersonID"
	))

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 3
DECLARE @paramCopy Int32
SET     @paramCopy = 2
DECLARE @ID_1 Int32
SET     @ID_1 = 3

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" p
		WHERE
			:ID <> p."PersonID" AND p."PersonID" = t1."PersonID"
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			"Person" p_1
		WHERE
			:paramCopy = p_1."PersonID" AND p_1."PersonID" = t1."PersonID"
	) OR EXISTS(
		SELECT
			*
		FROM
			"Person" p_2
		WHERE
			:ID_1 <> p_2."PersonID" AND p_2."PersonID" = t1."PersonID"
	))

