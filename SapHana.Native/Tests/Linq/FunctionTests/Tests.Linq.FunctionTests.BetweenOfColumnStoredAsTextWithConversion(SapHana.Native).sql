-- SapHana.Native SapHana
DECLARE @low VarChar(36) -- AnsiString
SET     @low = '00000000-0000-0000-0000-000000000001'
DECLARE @high VarChar(36) -- AnsiString
SET     @high = '00000000-0000-0000-0000-000000000002'
DECLARE @high_1 VarChar(36) -- AnsiString
SET     @high_1 = '00000000-0000-0000-0000-000000000002'
DECLARE @high_2 VarChar(36) -- AnsiString
SET     @high_2 = '00000000-0000-0000-0000-000000000002'

SELECT
	"r"."Id",
	CASE
		WHEN "r"."Value" BETWEEN :"low" AND :"high" THEN 1
		ELSE 0
	END
FROM
	"BetweenTextRow" "r"
WHERE
	"r"."Value" NOT BETWEEN :"high_1" AND :"high_2"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"BetweenTextRow" "t1"

