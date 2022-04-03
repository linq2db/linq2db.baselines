BeforeExecute
-- Firebird
DECLARE @p_1 VarChar(2) -- String
SET     @p_1 = '23'

SELECT
	Cast(@p_1 as VarChar(255) CHARACTER SET UNICODE_FSS)
FROM rdb$database

