-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
UPDATE
	"Issue4193Person"
SET
	"Name" = "Issue4193Person"."Name" || r."SalaryId"::text
FROM
	"Issue4193Employee" r
WHERE
	"Issue4193Person"."EmployeeId" = r."Id"
RETURNING
	"Issue4193Person"."EmployeeId"

