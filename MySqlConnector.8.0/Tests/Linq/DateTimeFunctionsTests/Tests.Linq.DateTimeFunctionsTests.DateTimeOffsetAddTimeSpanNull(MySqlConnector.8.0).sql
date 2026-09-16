-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @ts Time
SET     @ts = NULL

SELECT
	`t`.`Id`,
	`t`.`DateTimeOffset` + @ts,
	`t`.`DateTimeOffsetNullable` + @ts,
	`t`.`DateTimeOffset` - @ts,
	`t`.`DateTimeOffsetNullable` - @ts,
	`t`.`DateTimeOffset` + @ts,
	`t`.`DateTimeOffsetNullable` + @ts
FROM
	`DateTypesOffset` `t`
UNION ALL
SELECT
	`t_1`.`Id`,
	`t_1`.`DateTimeOffset` + @ts,
	`t_1`.`DateTimeOffsetNullable` + @ts,
	`t_1`.`DateTimeOffset` - @ts,
	`t_1`.`DateTimeOffsetNullable` - @ts,
	`t_1`.`DateTimeOffset` + @ts,
	`t_1`.`DateTimeOffsetNullable` + @ts
FROM
	`DateTypesOffset` `t_1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`DateTimeOffset`,
	`t1`.`DateTimeOffsetNullable`
FROM
	`DateTypesOffset` `t1`

