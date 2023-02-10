BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `BaseTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `BaseTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_BaseTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @BaseValue Int32
SET     @BaseValue = 100

INSERT INTO `BaseTable`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@BaseValue
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`x`.`Id`,
	`x`.`Value`
FROM
	`BaseTable` `x`
WHERE
	`x`.`Id` = 1
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`x`.`Id`,
	`x`.`Value`
FROM
	`BaseTable` `x`
WHERE
	`x`.`Id` = 1 AND `x`.`Value` = 100
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `BaseTable`

