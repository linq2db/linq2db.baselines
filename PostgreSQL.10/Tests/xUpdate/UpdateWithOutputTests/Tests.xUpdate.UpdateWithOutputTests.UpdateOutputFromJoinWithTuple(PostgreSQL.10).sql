-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
UPDATE
	"UpdateOutputPerson"
SET
	"Name" = "UpdateOutputPerson"."Name" || r."SalaryId"::text
FROM
	"UpdateOutputEmployee" r
WHERE
	"UpdateOutputPerson"."EmployeeId" = r."Id"
RETURNING
	"UpdateOutputPerson"."EmployeeId"

