BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TestFolder`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `TestFolder`
(
	`Id`       CHAR(36)      NOT NULL,
	`Label`    VARCHAR(4000)     NULL,
	`ParentId` CHAR(36)          NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Guid1 Guid
SET     @Guid1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

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
	@Guid1,
	Concat(`parent`.`Label`, '/', `child`.`Label`)
FROM
	`CTE` `child`
		INNER JOIN `TestFolder` `parent` ON `child`.`ParentId` = `parent`.`Id`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TestFolder`

