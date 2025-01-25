BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @paramCopy  -- Int32
SET     @paramCopy = 1
DECLARE @ID  -- Int32
SET     @ID = 0
DECLARE @ID  -- Int32
SET     @ID = 2

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" IN (
		SELECT
			"p"."PersonID"
		FROM
			"Person" "p"
		WHERE
			"p"."PersonID" = ?
	) AND
	("t1"."PersonID" IN (
		SELECT
			"p_1"."PersonID"
		FROM
			"Person" "p_1"
		WHERE
			"p_1"."PersonID" = ?
	) OR "t1"."PersonID" IN (
		SELECT
			"p_2"."PersonID"
		FROM
			"Person" "p_2"
		WHERE
			? <> "p_2"."PersonID"
	))

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @paramCopy  -- Int32
SET     @paramCopy = 2
DECLARE @ID  -- Int32
SET     @ID = 3

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" IN (
		SELECT
			"p"."PersonID"
		FROM
			"Person" "p"
		WHERE
			? <> "p"."PersonID"
	) AND
	("t1"."PersonID" IN (
		SELECT
			"p_1"."PersonID"
		FROM
			"Person" "p_1"
		WHERE
			? = "p_1"."PersonID"
	) OR "t1"."PersonID" IN (
		SELECT
			"p_2"."PersonID"
		FROM
			"Person" "p_2"
		WHERE
			? <> "p_2"."PersonID"
	))

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 4
DECLARE @ID  -- Int32
SET     @ID = 2
DECLARE @paramCopy  -- Int32
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
	"t1"."PersonID" IN (
		SELECT
			"p"."PersonID"
		FROM
			"Person" "p"
		WHERE
			? <> "p"."PersonID"
	) AND
	("t1"."PersonID" IN (
		SELECT
			"p_1"."PersonID"
		FROM
			"Person" "p_1"
		WHERE
			"p_1"."PersonID" = ?
	) OR "t1"."PersonID" IN (
		SELECT
			"p_2"."PersonID"
		FROM
			"Person" "p_2"
		WHERE
			"p_2"."PersonID" = ?
	))

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @paramCopy  -- Int32
SET     @paramCopy = 1
DECLARE @ID  -- Int32
SET     @ID = 0
DECLARE @ID  -- Int32
SET     @ID = 2

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" IN (
		SELECT
			"p"."PersonID"
		FROM
			"Person" "p"
		WHERE
			"p"."PersonID" = ?
	) AND
	("t1"."PersonID" IN (
		SELECT
			"p_1"."PersonID"
		FROM
			"Person" "p_1"
		WHERE
			"p_1"."PersonID" = ?
	) OR "t1"."PersonID" IN (
		SELECT
			"p_2"."PersonID"
		FROM
			"Person" "p_2"
		WHERE
			? <> "p_2"."PersonID"
	))

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 4
DECLARE @ID  -- Int32
SET     @ID = 2
DECLARE @paramCopy  -- Int32
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
	"t1"."PersonID" IN (
		SELECT
			"p"."PersonID"
		FROM
			"Person" "p"
		WHERE
			? <> "p"."PersonID"
	) AND
	("t1"."PersonID" IN (
		SELECT
			"p_1"."PersonID"
		FROM
			"Person" "p_1"
		WHERE
			"p_1"."PersonID" = ?
	) OR "t1"."PersonID" IN (
		SELECT
			"p_2"."PersonID"
		FROM
			"Person" "p_2"
		WHERE
			"p_2"."PersonID" = ?
	))

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @paramCopy  -- Int32
SET     @paramCopy = 2
DECLARE @ID  -- Int32
SET     @ID = 3

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" IN (
		SELECT
			"p"."PersonID"
		FROM
			"Person" "p"
		WHERE
			? <> "p"."PersonID"
	) AND
	("t1"."PersonID" IN (
		SELECT
			"p_1"."PersonID"
		FROM
			"Person" "p_1"
		WHERE
			? = "p_1"."PersonID"
	) OR "t1"."PersonID" IN (
		SELECT
			"p_2"."PersonID"
		FROM
			"Person" "p_2"
		WHERE
			? <> "p_2"."PersonID"
	))

