-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

UPDATE
	"UpdateOutputPerson" "x"
SET
	"Name" = 'new_name'
WHERE
	"x"."EmployeeId" = 1
ORDER BY
	"x"."EmployeeId"
ROWS @take
RETURNING
	NEW."EmployeeId",
	NEW."Name"

