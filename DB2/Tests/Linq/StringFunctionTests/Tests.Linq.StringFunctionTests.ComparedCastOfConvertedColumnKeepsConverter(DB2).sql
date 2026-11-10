-- DB2 DB2.LUW DB2LUW
DECLARE @Code VarChar(4) -- String
SET     @Code = 'x:A%'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeTable" "t"
WHERE
	Char("t"."Code", 40) LIKE @Code

-- DB2 DB2.LUW DB2LUW
DECLARE @bound VarChar(3) -- String
SET     @bound = 'x:A'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeTable" "t"
WHERE
	Char("t"."Code", 40) = @bound

