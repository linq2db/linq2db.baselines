-- DB2 DB2.LUW DB2LUW
DECLARE @low VarChar(36) -- String
SET     @low = '00000000-0000-0000-0000-000000000001'
DECLARE @high VarChar(36) -- String
SET     @high = '00000000-0000-0000-0000-000000000002'

SELECT
	"r"."Id",
	CASE
		WHEN "r"."Value" BETWEEN CAST(@low AS VarChar(36)) AND CAST(@high AS VarChar(36))
			THEN 1
		ELSE 0
	END
FROM
	"BetweenTextRow" "r"
WHERE
	"r"."Value" NOT BETWEEN @high AND @high

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"BetweenTextRow" "t1"

