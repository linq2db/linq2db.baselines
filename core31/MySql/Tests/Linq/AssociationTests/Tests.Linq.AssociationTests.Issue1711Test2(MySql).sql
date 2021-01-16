BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `Entity1711`
(
	`Id` BIGINT NOT NULL,

	CONSTRAINT `PK_Entity1711` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `Relationship1711`
(
	`EntityId` BIGINT  NOT NULL,
	`Deleted`  BOOLEAN NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `Relationship1711`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `Entity1711`

