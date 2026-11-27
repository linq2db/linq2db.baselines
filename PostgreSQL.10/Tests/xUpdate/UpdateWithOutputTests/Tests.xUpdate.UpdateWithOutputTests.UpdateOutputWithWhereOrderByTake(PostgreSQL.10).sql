-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

