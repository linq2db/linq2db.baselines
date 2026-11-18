-- Firebird.2.5 Firebird
DECLARE @Code VarChar(3) -- String
SET     @Code = 'x:A'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"PrefixedCode" "t"
			WHERE
				CAST(@Code AS VarChar(3) CHARACTER SET UNICODE_FSS) = CAST("t"."Code" AS VarChar(40) CHARACTER SET UNICODE_FSS)
		)
			THEN '1'
		ELSE '0'
	END
FROM rdb$database

