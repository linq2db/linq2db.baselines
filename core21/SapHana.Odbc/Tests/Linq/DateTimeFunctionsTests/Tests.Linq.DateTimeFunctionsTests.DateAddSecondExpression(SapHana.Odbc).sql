﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_1  -- Double
SET     @p_1 = 41

SELECT
	Add_Seconds("t"."DateTimeValue", ?)
FROM
	"LinqDataTypes" "t"

