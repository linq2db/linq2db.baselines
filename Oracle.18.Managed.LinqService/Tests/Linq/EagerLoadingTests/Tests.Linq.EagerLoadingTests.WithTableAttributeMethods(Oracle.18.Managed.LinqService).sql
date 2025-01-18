BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 10

INSERT INTO "UserIssue3128"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @UserId Int32
SET     @UserId = 10
DECLARE @Age Int32
SET     @Age = 18

INSERT INTO "UserDetailsIssue3128"
(
	"UserId",
	"Age"
)
VALUES
(
	:UserId,
	:Age
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
			"UserIssue3128" t1
	) > 0

