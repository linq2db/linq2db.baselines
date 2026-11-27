-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @parentId Int32
SET     @parentId = 12

SELECT
	`i`.`Id`,
	`i`.`Name`,
	`i`.`ParentId`
FROM
	`ParentIdNullableTable` `i`
WHERE
	`i`.`ParentId` = @parentId

