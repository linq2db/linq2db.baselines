-- PostgreSQL.18 PostgreSQL12
UPDATE
	"UpdateOutputSalary"
SET
	"Amount" = "UpdateOutputSalary"."Amount" + 15
FROM
	"UpdateOutputPerson" e
		LEFT JOIN "UpdateOutputEmployee" "a_Employee" ON e."EmployeeId" = "a_Employee"."Id"
WHERE
	e."Name" = 'foo' AND "a_Employee"."SalaryId" = "UpdateOutputSalary"."Id"
RETURNING
	NEW."Amount"

