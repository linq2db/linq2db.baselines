﻿BeforeExecute
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
	`e`.`Code`,
	`e`.`Id`,
	`e`.`Age`,
	`e`.`Name`
FROM
	`Base` `e`
WHERE
	`e`.`Code` <> 'Child' OR `e`.`Code` IS NULL

