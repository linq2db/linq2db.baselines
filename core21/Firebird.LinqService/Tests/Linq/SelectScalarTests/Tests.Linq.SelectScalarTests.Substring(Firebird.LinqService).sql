BeforeExecute
-- Firebird
DECLARE @p1 VarChar(2) -- String
SET     @p1 = '23'

SELECT
	Cast(@p1 as VarChar(255) CHARACTER SET UNICODE_FSS)
FROM rdb$database

