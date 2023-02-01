BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TestFolder`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TestFolder`
(
	`Id`       CHAR(36)      NOT NULL,
	`Label`    VARCHAR(4000)     NULL,
	`ParentId` CHAR(36)          NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Guid
SET     @Id = 'a711703f-2c41-4777-b6e2-09633b15088e'

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
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TestFolder`

