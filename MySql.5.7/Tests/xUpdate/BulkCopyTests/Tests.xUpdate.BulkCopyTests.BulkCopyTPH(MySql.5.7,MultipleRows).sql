﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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

