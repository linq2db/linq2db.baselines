BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue3323Table`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue3323Table`
(
	`Id`       INT           NOT NULL,
	`FistName` VARCHAR(4000)     NULL,
	`LastName` VARCHAR(4000)     NULL,
	`Text`     VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_Issue3323Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Issue3323Table`
(
	`Id`,
	`FistName`,
	`LastName`,
	`Text`
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	Concat(`r`.`FistName`, ' ', `r`.`LastName`)
FROM
	`Issue3323Table` `r`
UNION ALL
SELECT
	`r_1`.`Id` + 1,
	`r_1`.`Text`
FROM
	`Issue3323Table` `r_1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id` + 1,
	`r`.`Text`
FROM
	`Issue3323Table` `r`
UNION ALL
SELECT
	`r_1`.`Id`,
	Concat(`r_1`.`FistName`, ' ', `r_1`.`LastName`)
FROM
	`Issue3323Table` `r_1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue3323Table`

