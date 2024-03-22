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
	`t1`.`Count_1`
FROM
	(
		SELECT
			COUNT(*) as `Count_1`
		FROM
			`ForUpdateTestTable` `g_1`
		WHERE
			`g_1`.`Id` = 1
	) `t1`
WHERE
	`t1`.`Count_1` = 0
FOR UPDATE

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Data VarChar(9) -- String
SET     @Data = 'Some data'
DECLARE @p Datetime -- DateTime
SET     @p = '2020-02-29 17:54:55.123'

INSERT INTO `ForUpdateTestTable`
(
	`Id`,
	`OtherNaming`,
	`timestampUpdated`
)
SELECT
	@Id,
	@Data,
	@p
FROM
	(
		SELECT
			COUNT(*) as `Count_1`
		FROM
			`ForUpdateTestTable` `g_1`
		WHERE
			`g_1`.`Id` = 1
	) `t1`
WHERE
	`t1`.`Count_1` = 0
FOR UPDATE

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `ForUpdateTestTable`

