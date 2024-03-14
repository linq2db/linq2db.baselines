BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `gt_s_one`

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `access_mode`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `access_mode`
(
	`id`   INT           NOT NULL,
	`code` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_access_mode` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySql MySql.Official MySql

UPDATE
	`gt_s_one` `x`
		LEFT JOIN (
			SELECT
				`y1`.`id`,
				Upper(`y1`.`code`) as `c1`
			FROM
				`access_mode` `y1`
		) `y1_1` ON (Upper(Replace(`x`.`col3`, 'auth.', '')) = `y1_1`.`c1` OR Upper(Replace(`x`.`col3`, 'auth.', '')) IS NULL AND `y1_1`.`c1` IS NULL)
SET
	`x`.`col1` = `x`.`col1`,
	`x`.`col2` = `x`.`col2`,
	`x`.`col3` = Replace(`x`.`col3`, 'auth.', ''),
	`x`.`col4` = `x`.`col4`,
	`x`.`col5` = CASE
		WHEN `x`.`col3` = 'empty' THEN '1'
		ELSE '0'
	END,
	`x`.`col6` = CASE
		WHEN `x`.`col3` = 'empty' THEN ''
		ELSE Cast(`y1_1`.`id` as CHAR(255))
	END

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `access_mode`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `gt_s_one`

