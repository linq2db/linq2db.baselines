BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `WhereWithBool`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `WhereWithBool`
(
	`Id`        INT     NOT NULL,
	`BoolValue` BOOLEAN NOT NULL,

	CONSTRAINT `PK_WhereWithBool` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `WhereWithBool`
(
	`Id`,
	`BoolValue`
)
VALUES
(1,1)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t`.`Id`,
	`t`.`BoolValue`
FROM
	`WhereWithBool` `t`,
	`WhereWithBool` `x`
WHERE
	`x`.`BoolValue` = 1 AND `x`.`Id` = 1

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `WhereWithBool`

