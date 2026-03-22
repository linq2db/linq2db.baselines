-- Firebird.2.5 Firebird

UPDATE
	"Issue4193Person"
SET
	"Name" = (
		SELECT
			"p_1"."Name"
		FROM
			"Issue4193Person" "p_1"
				INNER JOIN "Issue4193Employee" "r_1" ON "p_1"."EmployeeId" = "r_1"."Id"
		WHERE
			"Issue4193Person"."Id" = "p_1"."Id"
	) || (
		SELECT
			"r_2"."SalaryId"
		FROM
			"Issue4193Person" "p_2"
				INNER JOIN "Issue4193Employee" "r_2" ON "p_2"."EmployeeId" = "r_2"."Id"
		WHERE
			"Issue4193Person"."Id" = "p_2"."Id"
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

