-- MySql.5.7 MySql.5.7.MySql.Data MySql57
CREATE TEMPORARY TABLE `TempIdentityRowTMP`
(
	`Id`    INT AUTO_INCREMENT NOT NULL,
	`Value` INT                NOT NULL,

	CONSTRAINT `PK_TempIdentityRowTMP` PRIMARY KEY CLUSTERED (`Id`)
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
INSERT INTO `TempIdentityRow`
(
	`Value`
)
VALUES
(
	1
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
INSERT INTO `TempIdentityRowTMP`
(
	`Value`
)
VALUES
(
	2
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TempIdentityRow` `t1`
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TempIdentityRowTMP` `t1`
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DROP TEMPORARY TABLE IF EXISTS `TempIdentityRowTMP`

