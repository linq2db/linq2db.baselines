BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `ComplexPerson`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `ComplexPerson`
(
	`Id`        INT           NOT NULL,
	`FirstName` VARCHAR(4000)     NULL,
	`LastName`  VARCHAR(4000)     NULL,

	CONSTRAINT `PK_ComplexPerson` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`Id`,
	`x`.`FirstName`,
	`x`.`LastName`
FROM
	`ComplexPerson` `x`
WHERE
	`x`.`Id` < 10
UNION
SELECT
	`x_1`.`Id`,
	`x_1`.`FirstName`,
	`x_1`.`LastName`
FROM
	`ComplexPerson` `x_1`
WHERE
	`x_1`.`Id` < 20

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `ComplexPerson`

