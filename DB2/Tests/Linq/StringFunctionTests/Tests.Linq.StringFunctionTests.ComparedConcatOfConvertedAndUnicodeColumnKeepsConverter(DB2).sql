-- DB2 DB2.LUW DB2LUW
DECLARE @Code VarChar(4) -- String
SET     @Code = 'x:AT'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeWithTitleTable" "t"
WHERE
	(Coalesce("t"."Code", '') || Coalesce("t"."Title", '')) LIKE @Code

-- DB2 DB2.LUW DB2LUW
DECLARE @bound VarChar(4) -- String
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeWithTitleTable" "t"
WHERE
	(Coalesce("t"."Code", '') || Coalesce("t"."Title", '')) = @bound

-- DB2 DB2.LUW DB2LUW
DECLARE @bound VarChar(4) -- String
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeWithTitleTable" "t"
WHERE
	(Coalesce("t"."Code", '') || Coalesce("t"."Title", '')) = @bound

