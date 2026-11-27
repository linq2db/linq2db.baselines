-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 10

INSERT INTO "LoadAsTableUser"
(
	"Id"
)
VALUES
(
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @UserId Int -- Int32
SET     @UserId = 10
DECLARE @Age Int -- Int32
SET     @Age = 18

INSERT INTO "LoadAsTableUserDetails"
(
	"UserId",
	"Age"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			"LoadAsTableUser" "t1"
	) > 0

