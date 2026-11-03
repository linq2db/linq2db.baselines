-- Firebird.3 Firebird3
DECLARE @Code VarChar(4) -- String
SET     @Code = 'x:AT'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeWithTitleTable" "t"
WHERE
	(Coalesce("t"."Code", '') || Coalesce("t"."Title", '')) LIKE @Code

-- Firebird.3 Firebird3
DECLARE @bound VarChar(4) -- String
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeWithTitleTable" "t"
WHERE
	(Coalesce("t"."Code", '') || Coalesce("t"."Title", '')) = @bound

-- Firebird.3 Firebird3
DECLARE @bound VarChar(4) -- String
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeWithTitleTable" "t"
WHERE
	(Coalesce("t"."Code", '') || Coalesce("t"."Title", '')) = @bound

