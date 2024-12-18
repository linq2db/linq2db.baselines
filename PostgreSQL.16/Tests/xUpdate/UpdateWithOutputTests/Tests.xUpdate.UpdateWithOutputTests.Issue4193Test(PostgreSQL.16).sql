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
	"Issue4193Salary"
SET
	"Amount" = "Issue4193Salary"."Amount" + 15
FROM
	"Issue4193Person" e
		LEFT JOIN "Issue4193Employee" "a_Employee" ON e."EmployeeId" = "a_Employee"."Id" AND e."EmployeeId" IS NOT NULL
WHERE
	e."Name" = 'foo' AND "a_Employee"."SalaryId" = "Issue4193Salary"."Id"
RETURNING
	"Issue4193Salary"."Amount"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4193Salary"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4193Employee"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4193Person"

