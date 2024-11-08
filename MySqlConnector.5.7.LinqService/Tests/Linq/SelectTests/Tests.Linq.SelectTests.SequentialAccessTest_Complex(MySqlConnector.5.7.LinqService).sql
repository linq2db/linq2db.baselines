BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN `t1`.`TypeDiscriminator` = 2 THEN 1
		ELSE 0
	END,
	`t1`.`InheritanceParentId`,
	`t1`.`TypeDiscriminator`,
	`t1`.`Name`,
	CASE
		WHEN `t1`.`TypeDiscriminator` = 1 THEN 1
		ELSE 0
	END
FROM
	`InheritanceParent` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN `t1`.`TypeDiscriminator` = 2 THEN 1
		ELSE 0
	END,
	`t1`.`InheritanceChildId`,
	`t1`.`TypeDiscriminator`,
	`t1`.`InheritanceParentId`,
	`t1`.`Name`,
	CASE
		WHEN `t1`.`TypeDiscriminator` = 1 THEN 1
		ELSE 0
	END
FROM
	`InheritanceChild` `t1`

