﻿BeforeExecute
-- Firebird.3 Firebird3
DECLARE @paramCopy Integer -- Int32
SET     @paramCopy = 1

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
	)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @paramCopy Integer -- Int32
SET     @paramCopy = 2

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
	)

BeforeExecute
-- Firebird.3 Firebird3
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
			"p"."PersonID" = @paramCopy AND "t1"."PersonID" = "p"."PersonID"
	)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @paramCopy Integer -- Int32
SET     @paramCopy = 4

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
	)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @paramCopy Integer -- Int32
SET     @paramCopy = 1

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
	)

