BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`        INT NOT NULL,
	`NullValue` INT     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`a`.`Id`,
	`a`.`NullValue`
FROM
	`SampleClass` `a`
WHERE
	(`a`.`Id` = 0 AND (`a`.`NullValue` = 0 AND `a`.`NullValue` IS NOT NULL OR `a`.`NullValue` IS NULL) OR `a`.`Id` = 1 AND `a`.`NullValue` = 1 AND `a`.`NullValue` IS NOT NULL OR `a`.`Id` = 2 AND `a`.`NullValue` = 2 AND `a`.`NullValue` IS NOT NULL)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `SampleClass`

