BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `ForUpdateTestTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

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
-- MariaDB MySqlConnector MySql

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
-- MariaDB MySqlConnector MySql
DECLARE @p Datetime -- DateTime
SET     @p = '2023-04-12 03:11:34.392'

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
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `ForUpdateTestTable`

