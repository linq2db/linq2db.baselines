BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4460Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue4460Table`
(
	`Id`      INT           NOT NULL,
	`Code`    VARCHAR(4000)     NULL,
	`Name`    VARCHAR(4000)     NULL,
	`Surname` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Code VarChar(10) -- String
SET     @Code = 'GrandChild'
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Tom'
DECLARE @Surname VarChar(5) -- String
SET     @Surname = 'Black'

INSERT INTO `Issue4460Table`
(
	`Id`,
	`Code`,
	`Name`,
	`Surname`
)
VALUES
(
	@Id,
	@Code,
	@Name,
	@Surname
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Code`,
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`Surname`
FROM
	`Issue4460Table` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue4460Table`

