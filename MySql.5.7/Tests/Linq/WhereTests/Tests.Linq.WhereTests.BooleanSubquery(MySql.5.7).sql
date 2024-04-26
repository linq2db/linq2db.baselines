BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `WhereWithBool`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `WhereWithBool`
(
	`Id`        INT     NOT NULL,
	`BoolValue` BOOLEAN NOT NULL,

	CONSTRAINT `PK_WhereWithBool` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `WhereWithBool`
(
	`Id`,
	`BoolValue`
)
VALUES
(1,1)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`Id`,
	`t`.`BoolValue`
FROM
	`WhereWithBool` `t`,
	`WhereWithBool` `x`
WHERE
	`x`.`BoolValue` = 1 AND `x`.`Id` = 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `WhereWithBool`

