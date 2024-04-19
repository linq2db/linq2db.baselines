BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @value Int32
SET     @value = NULL
DECLARE @p Int32
SET     @p = 0

SELECT
	@value as `c1`,
	CASE
		WHEN 1 = 1 THEN @p
		ELSE 4
	END as `c2`

