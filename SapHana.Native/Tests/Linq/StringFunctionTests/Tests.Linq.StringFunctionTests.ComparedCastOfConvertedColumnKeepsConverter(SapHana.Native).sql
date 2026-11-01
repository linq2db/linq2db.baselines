-- SapHana.Native SapHana
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:A%'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeTable" "t"
WHERE
	CAST("t"."Code" AS NVarChar(40)) LIKE :"Code"

-- SapHana.Native SapHana
DECLARE @bound VarChar(3) -- AnsiString
SET     @bound = 'x:A'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeTable" "t"
WHERE
	CAST("t"."Code" AS NVarChar(40)) = :"bound"

