-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TEMPORARY TABLE `T_a5fa779f4520`
(
	`item` INT NOT NULL
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `T_a5fa779f4520`
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
(10),
(100),
(101),
(102),
(103),
(104),
(105),
(106),
(107),
(108),
(109)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
			`T_a5fa779f4520` `t1`
	)
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TEMPORARY TABLE IF EXISTS `T_a5fa779f4520`

