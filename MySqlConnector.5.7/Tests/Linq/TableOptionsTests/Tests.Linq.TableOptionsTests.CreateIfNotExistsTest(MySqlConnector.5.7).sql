-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `CreateIfNotExistsTable`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `CreateIfNotExistsTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `CreateIfNotExistsTable`
(
	`Id`,
	`Value`
)
VALUES
(
	1,
	2
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`CreateIfNotExistsTable` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `CreateIfNotExistsTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `CreateIfNotExistsTable`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `CreateIfNotExistsTable`

