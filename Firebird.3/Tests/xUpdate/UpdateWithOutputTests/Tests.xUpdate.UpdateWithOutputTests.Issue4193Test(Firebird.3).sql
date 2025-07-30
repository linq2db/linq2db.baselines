BeforeExecute
-- Firebird.3 Firebird3

UPDATE
	"Issue4193Salary"
SET
	"Amount" = "Issue4193Salary"."Amount" + 15
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Issue4193Person" "e"
				LEFT JOIN "Issue4193Employee" "a_Employee" ON "e"."EmployeeId" = "a_Employee"."Id"
				LEFT JOIN "Issue4193Salary" "a_Salary" ON "a_Employee"."SalaryId" = "a_Salary"."Id"
		WHERE
			"e"."Name" = 'foo' AND "Issue4193Salary"."Id" = "a_Salary"."Id"
	)
RETURNING
	NEW."Amount"

