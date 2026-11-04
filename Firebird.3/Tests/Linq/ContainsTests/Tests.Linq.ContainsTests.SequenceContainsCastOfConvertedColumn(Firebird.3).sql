-- Firebird.3 Firebird3
DECLARE @Code VarChar(3) -- String
SET     @Code = 'x:A'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"PrefixedCode" "t"
		WHERE
			CAST(@Code AS VarChar(3) CHARACTER SET UNICODE_FSS) = CAST("t"."Code" AS VarChar(40) CHARACTER SET UNICODE_FSS)
	)
FROM rdb$database

