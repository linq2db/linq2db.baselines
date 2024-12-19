BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `SomeTable`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `SomeTable`
(
	`ClassProp` BOOLEAN NOT NULL,
	`Interface` BOOLEAN NOT NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `SomeTable`
(
	`ClassProp`,
	`Interface`
)
VALUES
(
	1,
	0
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ClassProp`,
	`t1`.`Interface`
FROM
	`SomeTable` `t1`
LIMIT 2

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `SomeTable`

