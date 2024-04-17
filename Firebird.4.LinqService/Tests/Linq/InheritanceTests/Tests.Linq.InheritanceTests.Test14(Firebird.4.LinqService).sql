BeforeExecute
-- Firebird.4 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 10
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"x"."ChildID"
FROM
	"Child" "x"
WHERE
	"x"."ChildID" = @id
FETCH NEXT @take ROWS ONLY

