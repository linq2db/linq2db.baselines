﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @Test-Name  -- Int32
SET     @Test-Name = 2

UPDATE
	"testparams" "t"
SET
	"Test-Name" = ?
WHERE
	"t"."Test-Name" = 1

