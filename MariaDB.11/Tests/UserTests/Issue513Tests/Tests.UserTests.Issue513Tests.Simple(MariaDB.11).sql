BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`TypeDiscriminator`,
	`t1`.`InheritanceParentId`,
	`t1`.`Name`
FROM
	`InheritanceParent` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`TypeDiscriminator`,
	`t1`.`InheritanceChildId`,
	`t1`.`InheritanceParentId`,
	`t1`.`Name`
FROM
	`InheritanceChild` `t1`

