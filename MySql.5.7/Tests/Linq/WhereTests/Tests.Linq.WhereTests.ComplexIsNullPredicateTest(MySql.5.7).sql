﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `ComplexPredicate`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `ComplexPredicate`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `ComplexPredicate`
(
	`Id`,
	`Value`
)
VALUES
(1,NULL),
(2,'other'),
(3,'123'),
(4,'test'),
(5,'1')

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`r`.`Id`,
	`r`.`Value`
FROM
	`ComplexPredicate` `r`
WHERE
	CASE
		WHEN `r`.`Value` = '123' THEN 1
		ELSE 0
	END = CASE
		WHEN `r`.`Value` = '1' OR `r`.`Value` = 'test' AND (`r`.`Value` <> '1' OR `r`.`Value` IS NULL)
			THEN 1
		ELSE 0
	END
ORDER BY
	`r`.`Id`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`ComplexPredicate` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `ComplexPredicate`

