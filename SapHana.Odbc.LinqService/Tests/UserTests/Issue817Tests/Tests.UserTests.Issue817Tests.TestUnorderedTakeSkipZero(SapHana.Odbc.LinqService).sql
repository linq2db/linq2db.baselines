BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	1
FROM
	"Person" "t1"
LIMIT ? OFFSET ?

