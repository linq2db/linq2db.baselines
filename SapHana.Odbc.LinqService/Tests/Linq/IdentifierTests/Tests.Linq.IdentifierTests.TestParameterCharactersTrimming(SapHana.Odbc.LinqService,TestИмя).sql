﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @TestИмя Int -- Int32
SET     @TestИмя = 2

UPDATE
	"testparams" "t"
SET
	"TestИмя" = ?
WHERE
	"t"."TestИмя" = 1

