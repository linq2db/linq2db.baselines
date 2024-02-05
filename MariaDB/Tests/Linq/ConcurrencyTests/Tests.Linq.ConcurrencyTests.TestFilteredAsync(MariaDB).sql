BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `ConcurrencyFiltered`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `ConcurrencyFiltered`
(
	`Id`    INT           NOT NULL,
	`Stamp` INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_ConcurrencyFiltered` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10
DECLARE @Value VarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO `ConcurrencyFiltered`
(
	`Id`,
	`Stamp`,
	`Value`
)
VALUES
(
	@Id,
	@Stamp,
	@Value
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyFiltered` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql (asynchronously)
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10

UPDATE
	`ConcurrencyFiltered` `r`
SET
	`r`.`Stamp` = `r`.`Stamp` + 1,
	`r`.`Value` = @Value
WHERE
	`r`.`Id` = 2 AND `r`.`Id` = @Id AND `r`.`Stamp` = @Stamp

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyFiltered` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql (asynchronously)
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10

UPDATE
	`ConcurrencyFiltered` `r`
SET
	`r`.`Stamp` = `r`.`Stamp` + 1,
	`r`.`Value` = @Value
WHERE
	`r`.`Id` = 1 AND `r`.`Id` = @Id AND `r`.`Stamp` = @Stamp

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyFiltered` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

DELETE   `r`
FROM
	`ConcurrencyFiltered` `r`
WHERE
	`r`.`Id` = 2 AND `r`.`Id` = @Id AND `r`.`Stamp` = @Stamp

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyFiltered` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

DELETE   `r`
FROM
	`ConcurrencyFiltered` `r`
WHERE
	`r`.`Id` = 1 AND `r`.`Id` = @Id AND `r`.`Stamp` = @Stamp

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyFiltered` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `ConcurrencyFiltered`

