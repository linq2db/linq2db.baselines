﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Dto`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Dto`
(
	`id`        INT           NOT NULL,
	`name`      VARCHAR(4000)     NULL,
	`parent_id` INT               NULL,
	`FullName`  VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

WITH RECURSIVE `d`
(
	`FullName`,
	`Dto_id`,
	`Dto_name`,
	`Dto_parent_id`,
	`Dto_FullName`
)
AS
(
	SELECT
		`a`.`name`,
		`a`.`id`,
		`a`.`name`,
		`a`.`parent_id`,
		`a`.`FullName`
	FROM
		`Dto` `a`
	WHERE
		`a`.`parent_id` IS NULL
	UNION ALL
	SELECT
		Concat(`recur`.`FullName`, ' > ', `t1`.`name`),
		`t1`.`id`,
		`t1`.`name`,
		`t1`.`parent_id`,
		`t1`.`FullName`
	FROM
		`Dto` `t1`
			INNER JOIN `d` `recur` ON `recur`.`Dto_id` = `t1`.`parent_id` AND `t1`.`parent_id` IS NOT NULL
)
SELECT
	`t2`.`Dto_id`,
	`t2`.`Dto_name`,
	`t2`.`Dto_parent_id`,
	`t2`.`Dto_FullName`,
	`t2`.`FullName`
FROM
	`d` `t2`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Dto`

