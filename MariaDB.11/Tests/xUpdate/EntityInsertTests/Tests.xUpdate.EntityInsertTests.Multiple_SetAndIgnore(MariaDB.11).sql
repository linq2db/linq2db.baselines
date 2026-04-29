-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(1) -- String
SET     @Name = 'n'
DECLARE @Version Int32
SET     @Version = 101
DECLARE @stamp Datetime -- DateTime
SET     @stamp = '2026-06-01'

INSERT INTO `EntityInsertTest`
(
	`Id`,
	`Name`,
	`Version`,
	`CreatedAt`
)
VALUES
(
	@Id,
	@Name,
	@Version,
	@stamp
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`Version`,
	`t1`.`CreatedAt`,
	`t1`.`CreatedBy`
FROM
	`EntityInsertTest` `t1`
LIMIT 2

