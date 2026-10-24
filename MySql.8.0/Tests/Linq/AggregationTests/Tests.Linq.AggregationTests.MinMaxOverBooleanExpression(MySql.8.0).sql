-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	MAX(CASE
		WHEN `t1`.`Id` = 2 THEN 1
		ELSE 0
	END)
FROM
	`Item` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	MIN(CASE
		WHEN `t1`.`Id` = 2 THEN 1
		ELSE 0
	END)
FROM
	`Item` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	MAX(CASE
		WHEN `t1`.`Id` = 2 THEN 1
		ELSE 0
	END)
FROM
	`Item` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	MIN(CASE
		WHEN `t1`.`Id` = 2 THEN 1
		ELSE 0
	END)
FROM
	`Item` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

