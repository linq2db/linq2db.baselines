-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `CreateIfNotExistsTable`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TEMPORARY TABLE `CreateIfNotExistsTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`CreateIfNotExistsTable` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `CreateIfNotExistsTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `CreateIfNotExistsTable`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TEMPORARY TABLE IF EXISTS `CreateIfNotExistsTable`

