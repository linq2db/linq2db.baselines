-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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

