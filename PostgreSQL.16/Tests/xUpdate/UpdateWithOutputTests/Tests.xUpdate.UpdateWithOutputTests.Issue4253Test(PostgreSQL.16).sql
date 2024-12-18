BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4193Person"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4193Person"
(
	"Name"       text NOT NULL,
	"EmployeeId" Int      NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4193Person"
(
	"Name",
	"EmployeeId"
)
VALUES
('foo',1)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4193Employee"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4193Employee"
(
	"SalaryId" Int NOT NULL,
	"Id"       Int NOT NULL,

	CONSTRAINT "PK_Issue4193Employee" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4193Employee"
(
	"SalaryId",
	"Id"
)
VALUES
(1,1)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4193Salary"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4193Salary"
(
	"Id"     Int NOT NULL,
	"Amount" Int     NULL,

	CONSTRAINT "PK_Issue4193Salary" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4193Salary"
(
	"Id",
	"Amount"
)
VALUES
(1,10)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

UPDATE
	"Issue4193Person"
SET
	"Name" = "Issue4193Person"."Name" || r."SalaryId"
FROM
	"Issue4193Employee" r
WHERE
	"Issue4193Person"."EmployeeId" = r."Id" AND "Issue4193Person"."EmployeeId" IS NOT NULL
RETURNING
	"Issue4193Person"."EmployeeId"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4193Salary"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4193Employee"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4193Person"

