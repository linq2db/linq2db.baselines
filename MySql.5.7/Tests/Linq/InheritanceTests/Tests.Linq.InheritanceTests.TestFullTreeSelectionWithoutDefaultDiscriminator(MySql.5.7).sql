BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `InheritanceFilter`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `InheritanceFilter`
(
	`Id`,
	`Code`,
	`Child1Field`,
	`Child2Field`,
	`Grandchild11Field`,
	`Grandchild12Field`,
	`Grandchild21Field`,
	`Grandchild22Field`
)
VALUES
(1,1,11,0,0,0,0,0),
(2,2,0,12,0,0,0,0),
(3,11,23,0,13,0,0,0),
(4,12,24,0,0,14,0,0),
(5,21,0,25,0,0,15,0),
(6,22,0,26,0,0,0,16)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `InheritanceFilter`

