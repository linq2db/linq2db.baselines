﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_1  -- Double
SET     @p_1 = 1

SELECT
	Add_Years("t"."DateTimeValue", ?)
FROM
	"LinqDataTypes" "t"

