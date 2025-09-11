BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

UPDATE
	"Issue4193Person"
SET
	"Name" = 'new_name'
FROM
	(
		SELECT
			x."Id"
		FROM
			"Issue4193Person" x
		WHERE
			x."EmployeeId" = 1
		ORDER BY
			x."EmployeeId"
		LIMIT :take
	) t1
WHERE
	"Issue4193Person"."Id" = t1."Id"
RETURNING
	"Issue4193Person"."EmployeeId",
	"Issue4193Person"."Name"

