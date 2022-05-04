BeforeExecute
-- Firebird4 Firebird
DECLARE @id Integer -- Int32
SET     @id = 10

SELECT FIRST 1
	"x"."ChildID"
FROM
	"Child" "x"
WHERE
	"x"."ChildID" = @id

