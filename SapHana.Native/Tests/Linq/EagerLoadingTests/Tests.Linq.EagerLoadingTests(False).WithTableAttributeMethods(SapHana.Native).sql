-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 10

INSERT INTO "LoadAsTableUser"
(
	"Id"
)
VALUES
(
	:"Id"
)

-- SapHana.Native SapHana
DECLARE @UserId Integer -- Int32
SET     @UserId = 10
DECLARE @Age Integer -- Int32
SET     @Age = 18

INSERT INTO "LoadAsTableUserDetails"
(
	"UserId",
	"Age"
)
VALUES
(
	:"UserId",
	:"Age"
)

-- SapHana.Native SapHana
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

