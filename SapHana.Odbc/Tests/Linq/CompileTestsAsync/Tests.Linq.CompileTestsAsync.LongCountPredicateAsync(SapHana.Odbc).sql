﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	COUNT(*)
FROM
	"AsyncDataTable" "c_1"
WHERE
	"c_1"."Id" = ?

