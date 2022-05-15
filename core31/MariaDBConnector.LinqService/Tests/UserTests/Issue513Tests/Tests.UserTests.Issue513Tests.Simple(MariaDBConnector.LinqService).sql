BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`t1`.`InheritanceParentId`,
	`t1`.`TypeDiscriminator`,
	`t1`.`Name`
FROM
	`InheritanceParent` `t1`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`t1`.`InheritanceChildId`,
	`t1`.`TypeDiscriminator`,
	`t1`.`InheritanceParentId`,
	`t1`.`Name`
FROM
	`InheritanceChild` `t1`

