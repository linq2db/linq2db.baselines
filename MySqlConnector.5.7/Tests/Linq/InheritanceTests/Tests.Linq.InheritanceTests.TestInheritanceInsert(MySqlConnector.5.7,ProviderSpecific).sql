BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `InheritanceFilter`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `InheritanceFilter`
(
	`Id`                INT NOT NULL,
	`Code`              INT NOT NULL,
	`Child1Field`       INT     NULL,
	`Child2Field`       INT     NULL,
	`Grandchild11Field` INT     NULL,
	`Grandchild12Field` INT     NULL,
	`Grandchild21Field` INT     NULL,
	`Grandchild22Field` INT     NULL,

	CONSTRAINT `PK_InheritanceFilter` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
INSERT BULK `InheritanceFilter`(Id, Code, Child1Field, Child2Field, Grandchild11Field, Grandchild12Field, Grandchild21Field, Grandchild22Field

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `InheritanceFilter`

