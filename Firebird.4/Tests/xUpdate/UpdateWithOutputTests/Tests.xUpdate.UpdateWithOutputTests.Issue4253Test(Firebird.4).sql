BeforeExecute
-- Firebird.4 Firebird4

UPDATE
	"Issue4193Person"
SET
	"Name" = (
		SELECT
			"Issue4193Person"."Name" || "r_1"."SalaryId"
		FROM
			"Issue4193Person" "p_1"
				INNER JOIN "Issue4193Employee" "r_1" ON "p_1"."EmployeeId" = "r_1"."Id"
		WHERE
			"Issue4193Person"."Id" = "p_1"."Id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Issue4193Person" "p"
				INNER JOIN "Issue4193Employee" "r" ON "p"."EmployeeId" = "r"."Id"
		WHERE
			"Issue4193Person"."Id" = "p"."Id"
	)
RETURNING
	NEW."EmployeeId"

