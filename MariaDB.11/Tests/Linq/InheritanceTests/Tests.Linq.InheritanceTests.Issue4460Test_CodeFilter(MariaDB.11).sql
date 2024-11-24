BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Base`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Base`
(
	`Code` VARCHAR(4000)     NULL,
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000)     NULL,
	`Age`  INT               NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Code VarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jane'

INSERT INTO `Base`
(
	`Code`,
	`Id`,
	`Name`
)
VALUES
(
	@Code,
	@Id,
	@Name
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Code VarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Age Int32
SET     @Age = 10

INSERT INTO `Base`
(
	`Code`,
	`Id`,
	`Age`
)
VALUES
(
	@Code,
	@Id,
	@Age
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	CASE
		WHEN `e`.`Code` = 'Child2' THEN 1
		ELSE 0
	END,
	`e`.`Code`,
	`e`.`Id`,
	`e`.`Age`,
	CASE
		WHEN `e`.`Code` = 'Child' THEN 1
		ELSE 0
	END,
	`e`.`Name`
FROM
	`Base` `e`
WHERE
	`e`.`Code` <> 'Child' OR `e`.`Code` IS NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Base`

