BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p VarChar(2) -- String
SET     @p = '23'

SELECT
	Cast(@p as VarChar(255) CHARACTER SET UNICODE_FSS)
FROM rdb$database

