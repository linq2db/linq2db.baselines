﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

INSERT INTO `PR_1598_Insert_Table_Cache`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`PR_1598_Insert_Table_Cache` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`PR_1598_Insert_Table_Cache` `t1`
SET
	`t1`.`Name` = @Name
WHERE
	`t1`.`Id` = @Id

BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`Id`,
	`t`.`Name`,
	`t`.`Age`
FROM
	`PR_1598_Insert_Table_Cache` `t`
WHERE
	`t`.`Id` = 1
LIMIT 1

