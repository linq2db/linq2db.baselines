BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `NullableBool`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `NullableBool`
(
	`ID`   INT     NOT NULL,
	`Bool` BOOLEAN     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`ID`,
	`r`.`Bool`
FROM
	`NullableBool` `r`
WHERE
	`r`.`Bool` = 1 OR `r`.`Bool` IS NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `NullableBool`

