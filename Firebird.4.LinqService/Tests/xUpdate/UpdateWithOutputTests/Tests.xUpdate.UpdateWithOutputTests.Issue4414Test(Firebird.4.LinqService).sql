BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 3

UPDATE
	"Issue4193Person" "x"
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

