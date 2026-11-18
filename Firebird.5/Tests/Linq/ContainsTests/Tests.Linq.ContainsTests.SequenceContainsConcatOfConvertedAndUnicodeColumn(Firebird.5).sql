-- Firebird.5 Firebird4
SELECT
	Coalesce("t"."Code", '') || Coalesce("t"."Title", '')
FROM
	"PrefixedCodeWithTitle" "t"
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @Code VarChar(4) -- String
SET     @Code = 'x:AT'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"PrefixedCodeWithTitle" "t"
		WHERE
			CAST(@Code AS VarChar(4) CHARACTER SET UNICODE_FSS) = Coalesce("t"."Code", '') || Coalesce("t"."Title", '')
	)
FROM rdb$database

