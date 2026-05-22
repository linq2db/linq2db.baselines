-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TEMPORARY TABLE `T_54aa6d5c9143`
(
	`item` INT NOT NULL
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `T_54aa6d5c9143`
(
	`item`
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`r`.`Id`,
	`r`.`Name`,
	`r`.`Tag`
FROM
	`ContainsTempTableTestRow` `r`
WHERE
	`r`.`Id` IN (
		SELECT
			`t1`.`item`
		FROM
			`T_54aa6d5c9143` `t1`
	)
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TEMPORARY TABLE IF EXISTS `T_54aa6d5c9143`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TEMPORARY TABLE `T_54aa6d5c9143`
(
	`item` INT NOT NULL
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `T_54aa6d5c9143`
(
	`item`
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`r`.`Id`,
	`r`.`Name`,
	`r`.`Tag`
FROM
	`ContainsTempTableTestRow` `r`
WHERE
	`r`.`Id` IN (
		SELECT
			`t1`.`item`
		FROM
			`T_54aa6d5c9143` `t1`
	)
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TEMPORARY TABLE IF EXISTS `T_54aa6d5c9143`

