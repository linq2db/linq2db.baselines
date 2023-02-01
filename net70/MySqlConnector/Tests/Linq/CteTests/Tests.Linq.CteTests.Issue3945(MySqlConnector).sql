BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TestFolder`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TestFolder`
(
	`Id`       CHAR(36)      NOT NULL,
	`Label`    VARCHAR(4000)     NULL,
	`ParentId` CHAR(36)          NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Guid
SET     @Id = '29fc2200-1c7c-4ff6-964d-50c0f9870757'

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
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TestFolder`

