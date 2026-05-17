-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 10

INSERT INTO "UserIssue3128"
(
	"Id"
)
VALUES
(
	:Id
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @UserId Integer -- Int32
SET     @UserId = 10
DECLARE @Age Integer -- Int32
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

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

