BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `TPHTable`
(
	`Id`,
	`Discriminator`,
	`Value1`,
	`Value2`,
	`Value3`,
	`NullableBool`
)
VALUES
(1,1,'Str1',NULL,NULL,NULL),
(2,2,NULL,'Str2',NULL,NULL),
(3,3,NULL,NULL,'Str3','Y')

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Discriminator`,
	`t1`.`Id`,
	`t1`.`Value3`,
	`t1`.`NullableBool`,
	`t1`.`Value2`,
	`t1`.`Value1`
FROM
	`TPHTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Discriminator`,
	`x`.`Id`,
	`x`.`Value3`,
	`x`.`NullableBool`,
	`x`.`Value2`,
	`x`.`Value1`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Discriminator` = 1
LIMIT 2

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Discriminator`,
	`x`.`Id`,
	`x`.`Value3`,
	`x`.`NullableBool`,
	`x`.`Value2`,
	`x`.`Value1`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Discriminator` = 2
LIMIT 2

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Discriminator`,
	`x`.`Id`,
	`x`.`Value3`,
	`x`.`NullableBool`,
	`x`.`Value2`,
	`x`.`Value1`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Discriminator` = 3
LIMIT 2

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Discriminator`,
	`x`.`Id`,
	`x`.`Value3`,
	`x`.`NullableBool`,
	`x`.`Value2`,
	`x`.`Value1`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Value1` = 'Str1'
LIMIT 2

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Discriminator`,
	`x`.`Id`,
	`x`.`Value3`,
	`x`.`NullableBool`,
	`x`.`Value2`,
	`x`.`Value1`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Value2` = 'Str2'
LIMIT 2

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Discriminator`,
	`x`.`Id`,
	`x`.`Value3`,
	`x`.`NullableBool`,
	`x`.`Value2`,
	`x`.`Value1`
FROM
	`TPHTable` `x`
WHERE
	`x`.`Value3` = 'Str3'
LIMIT 2

