BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "UserIssue3128"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "UserIssue3128"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_UserIssue3128" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "UserDetailsIssue3128"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "UserDetailsIssue3128"
(
	"UserId" Int NOT NULL,
	"Age"    Int NOT NULL,

	CONSTRAINT "PK_UserDetailsIssue3128" PRIMARY KEY ("UserId")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p_1."FirstName",
	p_1."PersonID",
	p_1."LastName",
	p_1."MiddleName",
	p_1."Gender"
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					"UserIssue3128" t1
			) as ex,
			p."FirstName",
			p."PersonID",
			p."LastName",
			p."MiddleName",
			p."Gender"
		FROM
			"Person" p
	) p_1
WHERE
	p_1.ex > 0

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "UserDetailsIssue3128"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "UserIssue3128"

