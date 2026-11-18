-- DB2 DB2.LUW DB2LUW
SELECT
	"t"."Id",
	RANK() OVER (ORDER BY (
		SELECT
			1
		FROM SYSIBM.SYSDUMMY1
	))
FROM
	"WindowFunctionTestEntity" "t"

