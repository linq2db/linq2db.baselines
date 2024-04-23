BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @value Int32
SET     @value = NULL
DECLARE @p Int32
SET     @p = 0

SELECT
	@value as `c1`,
	CASE
		WHEN 1 = 1 THEN @p
		ELSE 2
	END as `c2`

