-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @min Int64
SET     @min = -9223372036854775808

SELECT
	CAST(@min AS SIGNED) as `c1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @max Int64
SET     @max = 9223372036854775807

SELECT
	CAST(@max AS SIGNED) as `c1`

