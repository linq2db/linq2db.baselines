-- Firebird.4 Firebird4
UPDATE
	"UpdateOutputSalary"
SET
	"Amount" = "UpdateOutputSalary"."Amount" + 15
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdateOutputPerson" "e"
				LEFT JOIN "UpdateOutputEmployee" "a_Employee" ON "e"."EmployeeId" = "a_Employee"."Id"
				LEFT JOIN "UpdateOutputSalary" "a_Salary" ON "a_Employee"."SalaryId" = "a_Salary"."Id"
		WHERE
			"e"."Name" = 'foo' AND "UpdateOutputSalary"."Id" = "a_Salary"."Id"
	)
RETURNING
	NEW."Amount"

