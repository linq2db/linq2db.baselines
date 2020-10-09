BeforeExecute
--  Firebird
DECLARE @DateTime TimeStamp -- DateTime
SET     @DateTime = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT 
	"t".ID, 
	"t"."timestampDataType"
FROM
	"AllTypes" "t"
WHERE
	"t"."timestampDataType" = @DateTime

