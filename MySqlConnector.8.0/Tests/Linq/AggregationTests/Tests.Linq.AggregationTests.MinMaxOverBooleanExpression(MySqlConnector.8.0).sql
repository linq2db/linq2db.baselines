-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	MAX(CASE
		WHEN `t1`.`Id` = 2 THEN 1
		ELSE 0
	END)
FROM
	`Item` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	MIN(CASE
		WHEN `t1`.`Id` = 2 THEN 1
		ELSE 0
	END)
FROM
	`Item` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	MAX(CASE
		WHEN `t1`.`Id` = 2 THEN 1
		ELSE 0
	END)
FROM
	`Item` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	MIN(CASE
		WHEN `t1`.`Id` = 2 THEN 1
		ELSE 0
	END)
FROM
	`Item` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	MAX(CASE
		WHEN CASE
			WHEN `t1`.`Id` = 2 THEN 1
			ELSE `t1`.`Id` > 1
		END
			THEN 1
		ELSE 0
	END)
FROM
	`Item` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	MIN(CASE
		WHEN CASE
			WHEN `t1`.`Id` = 2 THEN 1
			ELSE `t1`.`Id` > 1
		END
			THEN 1
		ELSE 0
	END)
FROM
	`Item` `t1`

