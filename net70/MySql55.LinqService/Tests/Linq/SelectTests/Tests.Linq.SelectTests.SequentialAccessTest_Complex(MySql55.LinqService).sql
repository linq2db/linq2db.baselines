﻿BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`InheritanceParentId`,
	`t1`.`TypeDiscriminator`,
	`t1`.`Name`
FROM
	`InheritanceParent` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`InheritanceChildId`,
	`t1`.`InheritanceParentId`,
	`t1`.`TypeDiscriminator`,
	`t1`.`Name`
FROM
	`InheritanceChild` `t1`

