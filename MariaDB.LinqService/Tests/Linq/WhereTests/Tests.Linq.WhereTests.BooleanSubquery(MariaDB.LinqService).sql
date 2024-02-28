BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `WhereWithBool`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `WhereWithBool`
(
	`Id`        INT     NOT NULL,
	`BoolValue` BOOLEAN NOT NULL,

	CONSTRAINT `PK_WhereWithBool` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @BoolValue Bool -- Boolean
SET     @BoolValue = 1

INSERT INTO `WhereWithBool`
(
	`Id`,
	`BoolValue`
)
VALUES
(
	@Id,
	@BoolValue
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t`.`Id`,
	`t`.`BoolValue`
FROM
	`WhereWithBool` `t`
WHERE
	(
		SELECT
			`x`.`BoolValue`
		FROM
			`WhereWithBool` `x`
		WHERE
			`x`.`Id` = 1
	) = 1

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `WhereWithBool`

