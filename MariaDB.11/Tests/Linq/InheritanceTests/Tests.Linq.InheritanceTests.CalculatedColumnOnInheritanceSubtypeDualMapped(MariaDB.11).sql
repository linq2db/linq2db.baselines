-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Type Int32
SET     @Type = 1
DECLARE @Stored VarChar(4) -- String
SET     @Stored = 'John'

INSERT INTO `CalcSubtypeDual`
(
	`Id`,
	`Type`,
	`Stored`
)
VALUES
(
	@Id,
	@Type,
	@Stored
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Type`,
	`t1`.`Id`,
	`t1`.`Stored`,
	CONCAT(Coalesce(`t1`.`Stored`, ''), '!')
FROM
	`CalcSubtypeDual` `t1`
LIMIT 2

