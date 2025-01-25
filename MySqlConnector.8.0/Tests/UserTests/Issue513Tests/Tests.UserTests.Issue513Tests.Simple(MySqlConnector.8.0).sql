BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`TypeDiscriminator`,
	`t1`.`InheritanceParentId`,
	`t1`.`Name`
FROM
	`InheritanceParent` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`TypeDiscriminator`,
	`t1`.`InheritanceChildId`,
	`t1`.`InheritanceParentId`,
	`t1`.`Name`
FROM
	`InheritanceChild` `t1`

