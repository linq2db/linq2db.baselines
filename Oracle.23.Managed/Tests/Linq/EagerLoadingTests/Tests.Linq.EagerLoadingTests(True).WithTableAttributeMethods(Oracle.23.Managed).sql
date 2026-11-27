-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 10

INSERT INTO "LoadAsTableUser"
(
	"Id"
)
VALUES
(
	:Id
)

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @UserId Int32
SET     @UserId = 10
DECLARE @Age Int32
SET     @Age = 18

INSERT INTO "LoadAsTableUserDetails"
(
	"UserId",
	"Age"
)
VALUES
(
	:UserId,
	:Age
)

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			"LoadAsTableUser" t1
	) > 0

