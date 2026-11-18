-- SapHana.Native SapHana
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:AT'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeWithTitleTable" "t"
WHERE
	(Coalesce("t"."Code", '') || Coalesce("t"."Title", '')) LIKE :"Code"

-- SapHana.Native SapHana
DECLARE @bound VarChar(4) -- AnsiString
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeWithTitleTable" "t"
WHERE
	(Coalesce("t"."Code", '') || Coalesce("t"."Title", '')) = :"bound"

-- SapHana.Native SapHana
DECLARE @bound VarChar(4) -- AnsiString
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeWithTitleTable" "t"
WHERE
	(Coalesce("t"."Code", '') || Coalesce("t"."Title", '')) = :"bound"

