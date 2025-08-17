BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @In VarChar -- String
SET     @In = NULL
DECLARE @In_1 VarChar -- String
SET     @In_1 = NULL

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (@In, @In_1)

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @NotIn VarChar -- String
SET     @NotIn = NULL
DECLARE @NotIn_1 VarChar -- String
SET     @NotIn_1 = NULL

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	"s"."CEnum" NOT IN (@NotIn, @NotIn_1)

