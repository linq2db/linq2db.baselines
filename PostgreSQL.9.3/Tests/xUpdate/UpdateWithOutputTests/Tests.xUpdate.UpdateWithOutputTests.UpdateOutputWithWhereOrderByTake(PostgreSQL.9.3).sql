-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

UPDATE
	"UpdateOutputPerson"
SET
	"Name" = 'new_name'
FROM
	(
		SELECT
			x."Id"
		FROM
			"UpdateOutputPerson" x
		WHERE
			x."EmployeeId" = 1
		ORDER BY
			x."EmployeeId"
		LIMIT :take
	) t1
WHERE
	"UpdateOutputPerson"."Id" = t1."Id"
RETURNING
	"UpdateOutputPerson"."EmployeeId",
	"UpdateOutputPerson"."Name"

