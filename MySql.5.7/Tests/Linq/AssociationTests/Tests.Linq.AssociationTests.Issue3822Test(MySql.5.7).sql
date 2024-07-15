BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Dog`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Dog`
(
	`Id`      INT NOT NULL,
	`OwnerId` INT NOT NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Dog`
(
	`Id`,
	`OwnerId`
)
VALUES
(1,1)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Human`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Human`
(
	`Id`      INT NOT NULL,
	`HouseId` INT NOT NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Human`
(
	`Id`,
	`HouseId`
)
VALUES
(1,1)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `House`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `House`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `House`
(
	`Id`
)
VALUES
(1)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Window`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Window`
(
	`Id`       INT NOT NULL,
	`Position` INT NOT NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Window`
(
	`Id`,
	`Position`
)
VALUES
(6,6)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`
FROM
	`Dog` `x`
		INNER JOIN `Human` `a_Owner` ON `x`.`OwnerId` = `a_Owner`.`Id`
		INNER JOIN `House` `a_House` ON `a_Owner`.`HouseId` = `a_House`.`Id`
		LEFT JOIN (
			SELECT
				`a_WindowAtPosition`.`Id`
			FROM
				`Window` `a_WindowAtPosition`
			WHERE
				`a_WindowAtPosition`.`Position` = 6
			LIMIT 1
		) `t1` ON 1=1
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Window`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `House`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Human`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Dog`

