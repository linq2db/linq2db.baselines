﻿BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `Parent564`
(
	`Id`          INT          AUTO_INCREMENT NOT NULL,
	`Type`        VARCHAR(255)                    NULL,
	`StringValue` VARCHAR(20)                     NULL,
	`IntValue`    INT                             NULL,

	CONSTRAINT `PK_Parent564` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Type_1 VarChar(9) -- String
SET     @Type_1 = 'Child564A'
DECLARE @StringValue VarChar(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO `Parent564`
(
	`Type`,
	`StringValue`
)
VALUES
(
	@Type_1,
	@StringValue
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Type_1 VarChar(9) -- String
SET     @Type_1 = 'Child564B'
DECLARE @IntValue Int32
SET     @IntValue = 911

INSERT INTO `Parent564`
(
	`Type`,
	`IntValue`
)
VALUES
(
	@Type_1,
	@IntValue
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Parent564` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Parent564`

