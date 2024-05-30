BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `BaseTable`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `BaseTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_BaseTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `BaseTable`
(
	`Id`,
	`Value`
)
VALUES
(1,100)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`Id`,
	`x`.`Value`
FROM
	`BaseTable` `x`
WHERE
	`x`.`Id` = 1
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`Id`,
	`x`.`Value`
FROM
	`BaseTable` `x`
WHERE
	`x`.`Id` = 1 AND `x`.`Value` = 100
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `BaseTable`

