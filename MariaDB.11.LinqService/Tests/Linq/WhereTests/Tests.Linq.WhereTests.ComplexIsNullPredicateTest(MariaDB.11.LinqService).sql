BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `ComplexPredicate`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `ComplexPredicate`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value VarChar -- String
SET     @Value = NULL

INSERT INTO `ComplexPredicate`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value VarChar(5) -- String
SET     @Value = 'other'

INSERT INTO `ComplexPredicate`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Value VarChar(3) -- String
SET     @Value = '123'

INSERT INTO `ComplexPredicate`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Value VarChar(4) -- String
SET     @Value = 'test'

INSERT INTO `ComplexPredicate`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 5
DECLARE @Value VarChar(1) -- String
SET     @Value = '1'

INSERT INTO `ComplexPredicate`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Value`
FROM
	`ComplexPredicate` `r`
WHERE
	CASE
		WHEN `r`.`Value` = '123' AND `r`.`Value` IS NOT NULL THEN 1
		ELSE 0
	END = CASE
		WHEN `r`.`Value` = '1' AND `r`.`Value` IS NOT NULL OR `r`.`Value` = 'test' AND `r`.`Value` IS NOT NULL AND (`r`.`Value` <> '1' OR `r`.`Value` IS NULL)
			THEN 1
		ELSE 0
	END
ORDER BY
	`r`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`ComplexPredicate` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `ComplexPredicate`

