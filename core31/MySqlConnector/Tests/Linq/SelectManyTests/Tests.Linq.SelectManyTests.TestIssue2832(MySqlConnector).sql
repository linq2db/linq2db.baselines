BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `DctSetpointtype`
(
	`Id` BIGINT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_DctSetpointtype` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `VWellTree`
(
	`ShopId` DECIMAL     NULL,
	`WellId` BIGINT      NULL
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `DctOu`
(
	`ParentId` BIGINT                    NULL,
	`Id`       BIGINT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_DctOu` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `UacUsersDatagroup`
(
	`Inheritablepermission` INT    NOT NULL,
	`Permission`            INT    NOT NULL,
	`DatagroupId`           BIGINT NOT NULL,
	`UserId`                BIGINT NOT NULL,

	CONSTRAINT `PK_UacUsersDatagroup` PRIMARY KEY CLUSTERED (`UserId`, `DatagroupId`)
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Deviation`
(
	`WellId`         BIGINT NOT NULL,
	`SetpointtypeId` BIGINT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`spt`.`Id`
FROM
	`DctSetpointtype` `spt`
		LEFT JOIN (
			SELECT
				`d`.`SetpointtypeId`,
				`cudg`.`Permission`,
				`oudg`.`Inheritablepermission`
			FROM
				`VWellTree` `w`
					INNER JOIN `DctOu` `c_1` ON `w`.`ShopId` = `c_1`.`Id`
					LEFT JOIN `UacUsersDatagroup` `oudg` ON `c_1`.`ParentId` = `oudg`.`DatagroupId` AND `oudg`.`UserId` = 150 AND `oudg`.`Inheritablepermission` > 0
					LEFT JOIN `UacUsersDatagroup` `cudg` ON `c_1`.`Id` = `cudg`.`DatagroupId` AND `cudg`.`UserId` = 150
					INNER JOIN `Deviation` `d` ON `w`.`WellId` = `d`.`WellId`
		) `t1` ON `t1`.`SetpointtypeId` = `spt`.`Id` AND Cast((`t1`.`Permission` + `t1`.`Inheritablepermission`) as DECIMAL(29, 10)) IS NOT NULL

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Deviation`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `UacUsersDatagroup`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `DctOu`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `VWellTree`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `DctSetpointtype`

