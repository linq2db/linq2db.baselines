BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @id Integer -- Int32
SET     @id = 10

SELECT FIRST @take 
	"x"."ChildID"
FROM
	"Child" "x"
WHERE
	"x"."ChildID" = @id

