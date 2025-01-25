BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Item`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Item`
(
	`GroupId`     INT           NOT NULL,
	`ItemId`      INT           NOT NULL,
	`Description` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `ItemAppType`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `ItemAppType`
(
	`AppTypeId` INT NOT NULL,
	`ItemId`    INT NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `AppType`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `AppType`
(
	`AppTypeId`   INT      NOT NULL,
	`CreatedDate` DATETIME NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `AppSubType`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `AppSubType`
(
	`AppTypeId`    INT           NOT NULL,
	`AppSubTypeId` INT           NOT NULL,
	`Description`  VARCHAR(4000)     NULL,
	`CreatedDate`  DATETIME      NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @groupId Int32
SET     @groupId = 5

SELECT
	`i`.`ItemId`,
	`i`.`Description`,
	`t2`.`CountDistinctTypeId`,
	`t2`.`AppSubTypeId`,
	`t2`.`Description`,
	`t2`.`MaxSubtypeCreatedDate`,
	`t2`.`MaxTypeCreatedDate`,
	`t2`.`MaxTypeId`,
	`t2`.`CountDistinctSubTypeId`
FROM
	`Item` `i`
		LEFT JOIN LATERAL (
			SELECT
				`subtype_1`.`AppSubTypeId`,
				`subtype_1`.`Description`,
				MAX(`subtype_1`.`CreatedDate`) as `MaxSubtypeCreatedDate`,
				MAX(`type_1`.`CreatedDate`) as `MaxTypeCreatedDate`,
				MAX(`type_1`.`AppTypeId`) as `MaxTypeId`,
				COUNT(DISTINCT `type_1`.`AppTypeId`) as `CountDistinctTypeId`,
				COUNT(DISTINCT `subtype_1`.`AppSubTypeId`) as `CountDistinctSubTypeId`
			FROM
				`ItemAppType` `t1`
					LEFT JOIN `AppType` `type_1` ON `type_1`.`AppTypeId` = `t1`.`AppTypeId`
					LEFT JOIN `AppSubType` `subtype_1` ON `subtype_1`.`AppTypeId` = `type_1`.`AppTypeId`
			WHERE
				`t1`.`ItemId` = `i`.`ItemId` AND `type_1`.`AppTypeId` = `t1`.`AppTypeId` AND
				(`subtype_1`.`AppTypeId` = `type_1`.`AppTypeId` OR `subtype_1`.`AppTypeId` IS NULL AND `type_1`.`AppTypeId` IS NULL)
			GROUP BY
				`subtype_1`.`Description`,
				`subtype_1`.`AppSubTypeId`
			ORDER BY
				COUNT(DISTINCT `type_1`.`AppTypeId`) DESC,
				MAX(`subtype_1`.`CreatedDate`) DESC,
				MAX(`type_1`.`CreatedDate`) DESC,
				MAX(`type_1`.`AppTypeId`) DESC
			LIMIT 1
		) `t2` ON 1=1
WHERE
	`i`.`GroupId` = @groupId

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `AppSubType`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `AppType`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `ItemAppType`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Item`

