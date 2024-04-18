﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast(('2010-' || Lpad("p".ID,2,'0') || '-01') as Date) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Cast(Floor(Extract(year from "t"."c1")) as int) = 2010

