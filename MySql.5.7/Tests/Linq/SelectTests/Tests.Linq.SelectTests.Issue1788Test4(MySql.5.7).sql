BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Table1788`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Table1788`
(
	`Id`     INT NOT NULL,
	`Value1` INT NOT NULL,

	CONSTRAINT `PK_Table1788` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Table1788`
(
	`Id`,
	`Value1`
)
VALUES
(1,11),
(2,22),
(3,33)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value1`
FROM
	`Table1788` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`l`.`Id`,
	`l`.`Value1`
FROM
	`Table1788` `p`
		LEFT JOIN `Table1788` `l` ON `l`.`Id` = `p`.`Id` + 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Table1788`

