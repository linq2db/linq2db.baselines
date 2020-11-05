BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `gt_s_one`
(
	`id`   INT          NOT NULL,
	`col1` VARCHAR(255)     NULL,
	`col2` VARCHAR(255)     NULL,
	`col3` VARCHAR(255)     NULL,
	`col4` VARCHAR(255)     NULL,
	`col5` VARCHAR(255)     NULL,
	`col6` VARCHAR(255)     NULL,

	CONSTRAINT `PK_gt_s_one` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `access_mode`
(
	`id`   INT          NOT NULL,
	`code` VARCHAR(255)     NULL,

	CONSTRAINT `PK_access_mode` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

UPDATE
	`gt_s_one` `x`
		LEFT JOIN `access_mode` `am` ON Upper(Replace(`x`.`col3`, 'auth.', '')) = Upper(`am`.`code`)
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
		ELSE Cast(`am`.`id` as CHAR(11))
	END

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `access_mode`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `gt_s_one`

