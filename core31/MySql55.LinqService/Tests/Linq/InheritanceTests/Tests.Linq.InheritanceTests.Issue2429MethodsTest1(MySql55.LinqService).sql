BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `BaseTable`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `BaseTable`
(
	`Value` INT NOT NULL,
	`Id`    INT NOT NULL,

	CONSTRAINT `PK_BaseTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @BaseValue Int32
SET     @BaseValue = 100
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `BaseTable`
(
	`Value`,
	`Id`
)
VALUES
(
	@BaseValue,
	@Id
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`x`.`Value`,
	`x`.`Id`
FROM
	`BaseTable` `x`
WHERE
	`x`.`Id` = 1
LIMIT 1

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`x`.`Value`,
	`x`.`Id`
FROM
	`BaseTable` `x`
WHERE
	`x`.`Id` = 1 AND `x`.`Value` = 100
LIMIT 1

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `BaseTable`

