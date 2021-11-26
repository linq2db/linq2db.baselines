BeforeExecute
-- Firebird4 Firebird
DECLARE @ID VarChar(5) -- String
SET     @ID = '2010-'

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Cast((Cast(@ID as VarChar(255) CHARACTER SET UNICODE_FSS) || Cast("p".ID as VarChar(100) CHARACTER SET UNICODE_FSS) || '-1') as Date) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	Cast(Floor(Extract(year from "t"."c1")) as int) = 2010

