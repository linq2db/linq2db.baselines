BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `WhereWithString`

BeforeExecute
-- MySql55 MySql

CREATE TABLE IF NOT EXISTS `WhereWithString`
(
	`Id`          INT          NOT NULL,
	`StringValue` VARCHAR(255)     NULL,

	CONSTRAINT `PK_WhereWithString` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql

INSERT INTO `WhereWithString`
(
	`Id`,
	`StringValue`
)
VALUES
(1,'Str1')

BeforeExecute
-- MySql55 MySql

SELECT
	`x`.`Id`,
	`x`.`StringValue`
FROM
	`WhereWithString` `x`
WHERE
	LOCATE('Str', `x`.`StringValue`) > 0

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `WhereWithString`

