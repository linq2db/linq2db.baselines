-- Firebird.4 Firebird4
UPDATE
	"UpdateOutputPerson"
SET
	"Name" = (
		SELECT
			"p_1"."Name" || "r_1"."SalaryId"
		FROM
			"UpdateOutputPerson" "p_1"
				INNER JOIN "UpdateOutputEmployee" "r_1" ON "p_1"."EmployeeId" = "r_1"."Id"
		WHERE
			"UpdateOutputPerson"."Id" = "p_1"."Id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdateOutputPerson" "p"
				INNER JOIN "UpdateOutputEmployee" "r" ON "p"."EmployeeId" = "r"."Id"
		WHERE
			"UpdateOutputPerson"."Id" = "p"."Id"
	)
RETURNING
	NEW."EmployeeId"

