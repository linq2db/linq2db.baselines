BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `ForUpdateTestTable`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `ForUpdateTestTable`
(
	`Id`               INT           NOT NULL,
	`OtherNaming`      VARCHAR(4000) NOT NULL,
	`timestampUpdated` Timestamp     NOT NULL,

	CONSTRAINT `PK_ForUpdateTestTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
BeginTransaction
BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t_1`.`Count_1`
FROM
	(
		SELECT
			Count(*) as `Count_1`
		FROM
			`ForUpdateTestTable` `t`
		WHERE
			`t`.`Id` = 1
	) `t_1`
WHERE
	`t_1`.`Count_1` = 0
FOR UPDATE

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @p Datetime -- DateTime
SET     @p = '2023-04-12 03:15:13.246'

INSERT INTO `ForUpdateTestTable`
(
	`Id`,
	`OtherNaming`,
	`timestampUpdated`
)
SELECT
	1,
	'Some data',
	@p
FROM
	(
		SELECT
			Count(*) as `Count_1`
		FROM
			`ForUpdateTestTable` `t`
		WHERE
			`t`.`Id` = 1
	) `t_1`
WHERE
	`t_1`.`Count_1` = 0
FOR UPDATE

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `ForUpdateTestTable`

