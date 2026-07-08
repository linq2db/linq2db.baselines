-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Items VarChar(3) -- String
SET     @Items = 'A;B'

INSERT INTO `Issue5540`
(
	`Id`,
	`Items`
)
VALUES
(
	@Id,
	@Items
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Items`
FROM
	`Issue5540` `t1`

