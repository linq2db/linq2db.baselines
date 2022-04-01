﻿BeforeExecute
-- Firebird3 Firebird
DECLARE @p_1 VarChar(5) -- String
SET     @p_1 = '2010-'

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast((Cast(@p_1 as VarChar(255) CHARACTER SET UNICODE_FSS) || Cast("p".ID as VarChar(11) CHARACTER SET UNICODE_FSS) || '-1') as Date) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Cast(Floor(Extract(year from "t"."c1")) as int) = 2010

