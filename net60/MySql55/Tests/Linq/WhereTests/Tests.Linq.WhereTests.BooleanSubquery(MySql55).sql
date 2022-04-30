BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `WhereWithBool`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `WhereWithBool`
(
	`Id`        INT     NOT NULL,
	`BoolValue` BOOLEAN NOT NULL,

	CONSTRAINT `PK_WhereWithBool` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `WhereWithBool`
(
	`Id`,
	`BoolValue`
)
VALUES
(1,1)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t`.`Id`,
	`t`.`BoolValue`
FROM
	`WhereWithBool` `t`
WHERE
	(
		SELECT
			`x`.`BoolValue`
		FROM
			`WhereWithBool` `x`
		WHERE
			`x`.`Id` = 1
	) = 1

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `WhereWithBool`

