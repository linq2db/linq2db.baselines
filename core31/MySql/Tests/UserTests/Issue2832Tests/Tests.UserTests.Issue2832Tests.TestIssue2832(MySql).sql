BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `DctSetpointtype`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_DctSetpointtype` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `VWellTree`
(
	`ShopId` DECIMAL     NULL,
	`WellId` INT         NULL
)

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `DctOu`
(
	`ParentId` INT     NULL,
	`Id`       INT NOT NULL,

	CONSTRAINT `PK_DctOu` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `UacUsersDatagroup`
(
	`Inheritablepermission` INT NOT NULL,
	`Permission`            INT NOT NULL,
	`DatagroupId`           INT NOT NULL,
	`UserId`                INT NOT NULL,

	CONSTRAINT `PK_UacUsersDatagroup` PRIMARY KEY CLUSTERED (`UserId`, `DatagroupId`)
)

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `Deviation`
(
	`WellId`         INT NOT NULL,
	`SetpointtypeId` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

DROP TABLE `Deviation`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `UacUsersDatagroup`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `DctOu`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `VWellTree`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `DctSetpointtype`

