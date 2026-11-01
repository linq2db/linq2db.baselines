-- Firebird.5 Firebird4
DECLARE @Code VarChar(4) -- String
SET     @Code = 'x:A%'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeTable" "t"
WHERE
	CAST("t"."Code" AS VarChar(40) CHARACTER SET UNICODE_FSS) LIKE @Code

-- Firebird.5 Firebird4
DECLARE @bound VarChar(3) -- String
SET     @bound = 'x:A'

SELECT
	COUNT(*)
FROM
	"PrefixedCodeTable" "t"
WHERE
	CAST("t"."Code" AS VarChar(40) CHARACTER SET UNICODE_FSS) = @bound

