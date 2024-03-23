BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "UserIssue3128"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "UserIssue3128"
(
	"Id" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "UserDetailsIssue3128"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "UserDetailsIssue3128"
(
	"UserId" Integer NOT NULL,
	"Age"    Integer NOT NULL,

	PRIMARY KEY ("UserId")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 10

INSERT INTO "UserIssue3128"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @UserId  -- Int32
SET     @UserId = 10
DECLARE @Age  -- Int32
SET     @Age = 18

INSERT INTO "UserDetailsIssue3128"
(
	"UserId",
	"Age"
)
VALUES
(
	?,
	?
)

BeforeExecute
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
			"UserIssue3128" "t1"
	) > 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "UserDetailsIssue3128"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "UserIssue3128"

