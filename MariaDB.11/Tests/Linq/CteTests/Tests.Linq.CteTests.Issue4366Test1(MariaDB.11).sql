BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Dto`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Dto`
(
	`id`        INT           NOT NULL,
	`name`      VARCHAR(4000)     NULL,
	`parent_id` INT               NULL,
	`FullName`  VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

WITH RECURSIVE `d`
(
	`FullName`,
	`id`,
	`parent_id`,
	`name`
)
AS
(
	SELECT
		`a`.`name`,
		`a`.`id`,
		`a`.`parent_id`,
		`a`.`name`
	FROM
		`Dto` `a`
	WHERE
		`a`.`parent_id` IS NULL
	UNION ALL
	SELECT
		Concat(`recur`.`FullName`, ' > ', `t1`.`name`),
		`t1`.`id`,
		`t1`.`parent_id`,
		`t1`.`name`
	FROM
		`Dto` `t1`
			INNER JOIN `d` `recur` ON `recur`.`id` = `t1`.`parent_id` AND `t1`.`parent_id` IS NOT NULL
)
SELECT
	`t2`.`id`,
	`t2`.`parent_id`,
	`t2`.`name`,
	`t2`.`FullName`
FROM
	`d` `t2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Dto`

