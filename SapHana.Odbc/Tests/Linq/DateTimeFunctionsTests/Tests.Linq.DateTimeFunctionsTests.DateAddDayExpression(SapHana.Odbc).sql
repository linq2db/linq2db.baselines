﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value  -- Int32
SET     @Value = 5

SELECT
	To_Date(Add_Days("t"."DateTimeValue", ?))
FROM
	"LinqDataTypes" "t"

