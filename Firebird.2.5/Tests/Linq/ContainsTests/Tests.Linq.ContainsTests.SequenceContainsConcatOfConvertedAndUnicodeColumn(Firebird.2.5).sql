-- Firebird.2.5 Firebird
SELECT FIRST 2
	Coalesce("t"."Code", '') || Coalesce("t"."Title", '')
FROM
	"PrefixedCodeWithTitle" "t"

-- Firebird.2.5 Firebird
DECLARE @Code VarChar(4) -- String
SET     @Code = 'x:AT'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"PrefixedCodeWithTitle" "t"
			WHERE
				CAST(@Code AS VarChar(4) CHARACTER SET UNICODE_FSS) = Coalesce("t"."Code", '') || Coalesce("t"."Title", '')
		)
			THEN '1'
		ELSE '0'
	END
FROM rdb$database

