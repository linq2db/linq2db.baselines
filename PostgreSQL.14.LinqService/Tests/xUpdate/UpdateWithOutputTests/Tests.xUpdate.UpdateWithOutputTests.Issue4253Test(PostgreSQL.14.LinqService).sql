BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4193Person"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4193Person"
(
	"Name"       text NOT NULL,
	"EmployeeId" Int      NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Name Text(3) -- String
SET     @Name = 'foo'
DECLARE @EmployeeId Integer -- Int32
SET     @EmployeeId = 1

INSERT INTO "Issue4193Person"
(
	"Name",
	"EmployeeId"
)
VALUES
(
	:Name,
	:EmployeeId
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4193Employee"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4193Employee"
(
	"SalaryId" Int NOT NULL,
	"Id"       Int NOT NULL,

	CONSTRAINT "PK_Issue4193Employee" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @SalaryId Integer -- Int32
SET     @SalaryId = 1
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Issue4193Employee"
(
	"SalaryId",
	"Id"
)
VALUES
(
	:SalaryId,
	:Id
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4193Salary"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4193Salary"
(
	"Id"     Int NOT NULL,
	"Amount" Int     NULL,

	CONSTRAINT "PK_Issue4193Salary" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Amount Integer -- Int32
SET     @Amount = 10

INSERT INTO "Issue4193Salary"
(
	"Id",
	"Amount"
)
VALUES
(
	:Id,
	:Amount
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

UPDATE
	"Issue4193Person"
SET
	"Name" = "Issue4193Person"."Name" || r."SalaryId"
FROM
	"Issue4193Employee" r
WHERE
	"Issue4193Person"."EmployeeId" = r."Id"
RETURNING
	"Issue4193Person"."EmployeeId"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4193Salary"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4193Employee"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4193Person"

