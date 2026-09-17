-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @ts Time
SET     @ts = NULL

SELECT
	`t`.`Id`,
	`t`.`DateTime` + @ts,
	`t`.`DateTimeNullable` + @ts,
	`t`.`DateTime2` + @ts,
	`t`.`DateTime2Nullable` + @ts,
	`t`.`DateTime` - @ts,
	`t`.`DateTimeNullable` - @ts,
	`t`.`DateTime2` - @ts,
	`t`.`DateTime2Nullable` - @ts,
	CAST(NULL AS DATETIME),
	CAST(NULL AS DATETIME),
	CAST(NULL AS DATETIME),
	CAST(NULL AS DATETIME)
FROM
	`DateTypes` `t`
UNION ALL
SELECT
	`t_1`.`Id`,
	`t_1`.`DateTime` + @ts,
	`t_1`.`DateTimeNullable` + @ts,
	`t_1`.`DateTime2` + @ts,
	`t_1`.`DateTime2Nullable` + @ts,
	`t_1`.`DateTime` - @ts,
	`t_1`.`DateTimeNullable` - @ts,
	`t_1`.`DateTime2` - @ts,
	`t_1`.`DateTime2Nullable` - @ts,
	NULL,
	NULL,
	NULL,
	NULL
FROM
	`DateTypes` `t_1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`DateTime`,
	`t1`.`DateTimeNullable`,
	`t1`.`DateTime2`,
	`t1`.`DateTime2Nullable`
FROM
	`DateTypes` `t1`

