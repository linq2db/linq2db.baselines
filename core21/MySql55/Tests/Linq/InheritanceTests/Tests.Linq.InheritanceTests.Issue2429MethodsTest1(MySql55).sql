﻿BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `BaseTable`

BeforeExecute
-- MySql55 MySql

CREATE TABLE IF NOT EXISTS `BaseTable`
(
	`Value` INT NOT NULL,
	`Id`    INT NOT NULL,

	CONSTRAINT `PK_BaseTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql

INSERT INTO `BaseTable`
(
	`Value`,
	`Id`
)
VALUES
(100,1)

BeforeExecute
-- MySql55 MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`x`.`Value`,
	`x`.`Id`
FROM
	`BaseTable` `x`
WHERE
	`x`.`Id` = 1
LIMIT @take

BeforeExecute
-- MySql55 MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`x`.`Value`,
	`x`.`Id`
FROM
	`BaseTable` `x`
WHERE
	`x`.`Id` = 1 AND `x`.`Value` = 100
LIMIT @take

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `BaseTable`

