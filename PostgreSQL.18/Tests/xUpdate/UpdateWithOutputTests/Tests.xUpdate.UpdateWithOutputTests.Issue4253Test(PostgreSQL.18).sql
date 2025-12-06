-- PostgreSQL.18 PostgreSQL

UPDATE
	"Issue4193Person"
SET
	"Name" = "Issue4193Person"."Name" || r."SalaryId"
FROM
	"Issue4193Employee" r
WHERE
	"Issue4193Person"."EmployeeId" = r."Id"
RETURNING
	NEW."EmployeeId"

