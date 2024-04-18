﻿BeforeExecute
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
DECLARE @Id Int32
SET     @Id = 1
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 1

INSERT INTO `WhereWithBool`
(
	`Id`,
	`BoolValue`
)
VALUES
(
	@Id,
	@BoolValue
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `WhereWithBool`

