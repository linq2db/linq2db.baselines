BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @value Int32
SET     @value = 0
DECLARE @p Int32
SET     @p = 0

SELECT
	@value as `c1`,
	CASE
		WHEN 1 = 1 THEN @p
		ELSE 4
	END as `c2`

