-- MySql.8.0 MySql.8.0.MySql.Data MySql80
CREATE TEMPORARY TABLE `TempIdentityRowTMP`
(
	`Id`    INT AUTO_INCREMENT NOT NULL,
	`Value` INT                NOT NULL,

	CONSTRAINT `PK_TempIdentityRowTMP` PRIMARY KEY CLUSTERED (`Id`)
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
INSERT INTO `TempIdentityRow`
(
	`Value`
)
VALUES
(
	1
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
INSERT INTO `TempIdentityRowTMP`
(
	`Value`
)
VALUES
(
	2
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TempIdentityRow` `t1`
LIMIT 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TempIdentityRowTMP` `t1`
LIMIT 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DROP TEMPORARY TABLE IF EXISTS `TempIdentityRowTMP`

