-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @min Int64
SET     @min = -9223372036854775808

SELECT
	CAST(@min AS SIGNED) as `c1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @max Int64
SET     @max = 9223372036854775807

SELECT
	CAST(@max AS SIGNED) as `c1`

