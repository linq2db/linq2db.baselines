-- DB2 DB2.LUW DB2LUW
DECLARE @In VarChar -- String
SET     @In = NULL

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (@In, @In)

-- DB2 DB2.LUW DB2LUW
DECLARE @NotIn VarChar -- String
SET     @NotIn = NULL

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."CEnum" NOT IN (@NotIn, @NotIn)

