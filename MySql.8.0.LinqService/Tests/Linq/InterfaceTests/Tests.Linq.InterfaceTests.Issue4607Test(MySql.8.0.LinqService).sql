BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `SomeTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `SomeTable`
(
	`ClassProp` BOOLEAN NOT NULL,
	`Interface` BOOLEAN NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ClassProp`,
	`t1`.`Interface`
FROM
	`SomeTable` `t1`
LIMIT 2

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `SomeTable`

