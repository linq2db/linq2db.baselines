BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `TestFolder`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TestFolder`
(
	`Id`       CHAR(36)      NOT NULL,
	`Label`    VARCHAR(4000)     NULL,
	`ParentId` CHAR(36)          NULL
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @Id Guid
SET     @Id = 'edffb35d-48a7-4c5e-bc04-79dc7f42fb8c'

INSERT INTO `TestFolder`
(
	`Id`,
	`Label`
)
WITH `CTE` (`Id`, `Label`, `ParentId`)
AS
(
	SELECT
		`c_1`.`Id`,
		`c_1`.`Label`,
		`c_1`.`ParentId`
	FROM
		`TestFolder` `c_1`
	WHERE
		`c_1`.`ParentId` IS NOT NULL
)
SELECT
	@Id,
	Concat(`parent`.`Label`, '/', `child`.`Label`)
FROM
	`CTE` `child`
		INNER JOIN `TestFolder` `parent` ON `child`.`ParentId` = `parent`.`Id`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `TestFolder`

