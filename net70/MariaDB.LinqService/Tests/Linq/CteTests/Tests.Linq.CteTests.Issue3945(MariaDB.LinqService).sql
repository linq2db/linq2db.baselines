BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `TestFolder`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TestFolder`
(
	`Id`       CHAR(36)      NOT NULL,
	`Label`    VARCHAR(4000)     NULL,
	`ParentId` CHAR(36)          NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Guid
SET     @Id = '28979d8d-4b79-45ed-a1aa-cfd381ec4284'

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
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `TestFolder`

