﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_1  -- Double
SET     @p_1 = 5

SELECT
	Add_Days("t"."DateTimeValue", ?)
FROM
	"LinqDataTypes" "t"

