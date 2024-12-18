BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `gt_s_one`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `gt_s_one`
(
	`id`   INT          NOT NULL,
	`col1` VARCHAR(100)     NULL,
	`col2` VARCHAR(100)     NULL,
	`col3` VARCHAR(100)     NULL,
	`col4` VARCHAR(100)     NULL,
	`col5` VARCHAR(100)     NULL,
	`col6` VARCHAR(100)     NULL,

	CONSTRAINT `PK_gt_s_one` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `gt_s_one_target`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `gt_s_one_target`
(
	`id`   INT          NOT NULL,
	`col1` VARCHAR(100)     NULL,
	`col2` VARCHAR(100)     NULL,
	`col3` VARCHAR(100)     NULL,
	`col4` VARCHAR(100)     NULL,
	`col5` VARCHAR(100)     NULL,
	`col6` VARCHAR(100)     NULL,

	CONSTRAINT `PK_gt_s_one_target` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `access_mode`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `access_mode`
(
	`id`   INT           NOT NULL,
	`code` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_access_mode` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

UPDATE
	`gt_s_one_target` `u`,
	`gt_s_one` `x`
		LEFT JOIN `access_mode` `y1` ON Upper(REPLACE(`x`.`col3`, 'auth.', '')) = Upper(`y1`.`code`) AND Upper(REPLACE(`x`.`col3`, 'auth.', '')) IS NOT NULL AND Upper(`y1`.`code`) IS NOT NULL OR Upper(REPLACE(`x`.`col3`, 'auth.', '')) IS NULL AND Upper(`y1`.`code`) IS NULL
SET
	`u`.`col1` = `x`.`col1`,
	`u`.`col2` = `x`.`col2`,
	`u`.`col3` = REPLACE(`x`.`col3`, 'auth.', ''),
	`u`.`col4` = `x`.`col4`,
	`u`.`col5` = CASE
		WHEN `x`.`col3` = 'empty' AND `x`.`col3` IS NOT NULL THEN '1'
		ELSE '0'
	END,
	`u`.`col6` = CASE
		WHEN `x`.`col3` = 'empty' AND `x`.`col3` IS NOT NULL THEN ''
		ELSE CAST(`y1`.`id` AS CHAR(11))
	END
WHERE
	`x`.`id` = `u`.`id`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `access_mode`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `gt_s_one_target`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `gt_s_one`

