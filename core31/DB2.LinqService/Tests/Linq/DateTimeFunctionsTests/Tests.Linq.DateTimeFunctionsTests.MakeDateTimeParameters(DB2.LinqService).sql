﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p_1 VarChar(5) -- String
SET     @p_1 = '2010-'

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Date(@p_1 || RTrim(Char("p".ID)) || '-1') as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	To_Number(To_Char("t"."c1", 'YYYY')) = 2010

