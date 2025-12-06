-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `TestFolder`
(
	`Id`,
	`Label`
)
WITH `CTE` (`ParentId`, `Label`)
AS
(
	SELECT
		`c_1`.`ParentId`,
		`c_1`.`Label`
	FROM
		`TestFolder` `c_1`
	WHERE
		`c_1`.`ParentId` IS NOT NULL
)
SELECT
	'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',
	Concat(`parent`.`Label`, '/', `child`.`Label`)
FROM
	`CTE` `child`
		INNER JOIN `TestFolder` `parent` ON `child`.`ParentId` = `parent`.`Id`

