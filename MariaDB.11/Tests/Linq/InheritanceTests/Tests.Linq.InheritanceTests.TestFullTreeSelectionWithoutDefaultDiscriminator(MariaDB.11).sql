BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Code`,
	`t1`.`Id`,
	`t1`.`Child1Field`,
	`t1`.`Child2Field`,
	`t1`.`Grandchild11Field`,
	`t1`.`Grandchild12Field`,
	`t1`.`Grandchild21Field`,
	`t1`.`Grandchild22Field`
FROM
	`InheritanceFilter` `t1`

