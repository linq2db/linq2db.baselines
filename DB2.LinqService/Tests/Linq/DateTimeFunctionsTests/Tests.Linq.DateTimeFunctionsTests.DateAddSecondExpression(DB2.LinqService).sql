﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @Value Integer(4) -- Int32
SET     @Value = 41

SELECT
	Extract(second from ("t"."DateTimeValue" + CAST(@Value AS Int) SECOND))
FROM
	"LinqDataTypes" "t"

