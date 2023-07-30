BeforeExecute
-- Firebird
DECLARE @p VarChar(5) -- String
SET     @p = '2010-'

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast((Cast(@p as VarChar(255) CHARACTER SET UNICODE_FSS) || Lpad("p".ID,2,'0') || '-01') as Date) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Cast(Floor(Extract(year from "t"."c1")) as int) = 2010

