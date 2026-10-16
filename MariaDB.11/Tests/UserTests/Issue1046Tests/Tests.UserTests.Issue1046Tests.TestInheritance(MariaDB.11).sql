-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'
DECLARE @BdaValue VarChar(9) -- String
SET     @BdaValue = 'Bda value'

INSERT INTO `Task`
(
	`Id`,
	`TargetName`,
	`BdaValue`
)
VALUES
(
	@Id,
	@TargetName,
	@BdaValue
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`Id`,
	`p`.`TargetName`,
	`p`.`BdaValue`
FROM
	`Task` `p`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`p`.`BdaValue`
FROM
	`Task` `p`

