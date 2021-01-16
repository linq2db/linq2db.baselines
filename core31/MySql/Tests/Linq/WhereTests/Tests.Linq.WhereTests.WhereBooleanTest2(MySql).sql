BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `WhereCases`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `WhereCases`
(
	`Id`                INT     NOT NULL,
	`BoolValue`         BOOLEAN NOT NULL,
	`NullableBoolValue` BOOLEAN     NULL,

	CONSTRAINT `PK_WhereCases` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `WhereCases`
(
	`Id`,
	`BoolValue`,
	`NullableBoolValue`
)
VALUES
(1,1,NULL),
(2,1,1),
(3,1,NULL),
(4,1,1),
(5,1,1),
(11,0,NULL),
(12,0,0),
(13,0,NULL),
(14,0,0),
(15,0,0)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `WhereCases`

