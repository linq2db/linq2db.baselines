BeforeExecute
-- Firebird3 Firebird
DECLARE @id Integer -- Int32
SET     @id = 10

SELECT FIRST 1
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = @id

