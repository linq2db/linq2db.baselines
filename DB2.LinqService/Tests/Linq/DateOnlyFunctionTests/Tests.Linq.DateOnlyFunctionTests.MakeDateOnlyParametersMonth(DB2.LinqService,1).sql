﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @month Integer(4) -- Int32
SET     @month = 1

SELECT
	CAST(LPad(2010 + "t".ID, 4, '0') || '-' || LPad(@month, 2, '0') || '-01' AS Date)
FROM
	"LinqDataTypes" "t"

