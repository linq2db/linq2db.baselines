BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @paramCopy Integer -- Int32
SET     @paramCopy = 1
DECLARE @p Integer -- Int32
SET     @p = 0
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 2

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" "p"
		WHERE
			"p"."PersonID" = @paramCopy AND "t1"."PersonID" = "p"."PersonID"
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			"Person" "p_1"
		WHERE
			"p_1"."PersonID" = @p AND "t1"."PersonID" = "p_1"."PersonID"
	) OR EXISTS(
		SELECT
			*
		FROM
			"Person" "p_2"
		WHERE
			@p_1 <> "p_2"."PersonID" AND "t1"."PersonID" = "p_2"."PersonID"
	))

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 3
DECLARE @paramCopy Integer -- Int32
SET     @paramCopy = 2
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 3

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" "p"
		WHERE
			@p <> "p"."PersonID" AND "t1"."PersonID" = "p"."PersonID"
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			"Person" "p_1"
		WHERE
			@paramCopy = "p_1"."PersonID" AND "t1"."PersonID" = "p_1"."PersonID"
	) OR EXISTS(
		SELECT
			*
		FROM
			"Person" "p_2"
		WHERE
			@p_1 <> "p_2"."PersonID" AND "t1"."PersonID" = "p_2"."PersonID"
	))

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 4
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 2
DECLARE @paramCopy Integer -- Int32
SET     @paramCopy = 3

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" "p"
		WHERE
			@p <> "p"."PersonID" AND "t1"."PersonID" = "p"."PersonID"
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			"Person" "p_1"
		WHERE
			"p_1"."PersonID" = @p_1 AND "t1"."PersonID" = "p_1"."PersonID"
	) OR EXISTS(
		SELECT
			*
		FROM
			"Person" "p_2"
		WHERE
			"p_2"."PersonID" = @paramCopy AND "t1"."PersonID" = "p_2"."PersonID"
	))

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @paramCopy Integer -- Int32
SET     @paramCopy = 1
DECLARE @p Integer -- Int32
SET     @p = 0
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 2

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" "p"
		WHERE
			"p"."PersonID" = @paramCopy AND "t1"."PersonID" = "p"."PersonID"
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			"Person" "p_1"
		WHERE
			"p_1"."PersonID" = @p AND "t1"."PersonID" = "p_1"."PersonID"
	) OR EXISTS(
		SELECT
			*
		FROM
			"Person" "p_2"
		WHERE
			@p_1 <> "p_2"."PersonID" AND "t1"."PersonID" = "p_2"."PersonID"
	))

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 4
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 2
DECLARE @paramCopy Integer -- Int32
SET     @paramCopy = 3

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" "p"
		WHERE
			@p <> "p"."PersonID" AND "t1"."PersonID" = "p"."PersonID"
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			"Person" "p_1"
		WHERE
			"p_1"."PersonID" = @p_1 AND "t1"."PersonID" = "p_1"."PersonID"
	) OR EXISTS(
		SELECT
			*
		FROM
			"Person" "p_2"
		WHERE
			"p_2"."PersonID" = @paramCopy AND "t1"."PersonID" = "p_2"."PersonID"
	))

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 3
DECLARE @paramCopy Integer -- Int32
SET     @paramCopy = 2
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 3

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" "p"
		WHERE
			@p <> "p"."PersonID" AND "t1"."PersonID" = "p"."PersonID"
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			"Person" "p_1"
		WHERE
			@paramCopy = "p_1"."PersonID" AND "t1"."PersonID" = "p_1"."PersonID"
	) OR EXISTS(
		SELECT
			*
		FROM
			"Person" "p_2"
		WHERE
			@p_1 <> "p_2"."PersonID" AND "t1"."PersonID" = "p_2"."PersonID"
	))

