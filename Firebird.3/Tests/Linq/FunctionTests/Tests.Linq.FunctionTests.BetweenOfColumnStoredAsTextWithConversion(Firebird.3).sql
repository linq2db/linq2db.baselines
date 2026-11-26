-- Firebird.3 Firebird3
DECLARE @low VarChar(36) -- String
SET     @low = '00000000-0000-0000-0000-000000000001'
DECLARE @high VarChar(36) -- String
SET     @high = '00000000-0000-0000-0000-000000000002'

SELECT
	"r"."Id",
	CASE
		WHEN "r"."Value" BETWEEN CAST(@low AS VarChar(36) CHARACTER SET UNICODE_FSS) AND CAST(@high AS VarChar(36) CHARACTER SET UNICODE_FSS)
			THEN TRUE
		ELSE FALSE
	END
FROM
	"BetweenTextRow" "r"
WHERE
	"r"."Value" NOT BETWEEN @high AND @high

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"BetweenTextRow" "t1"

