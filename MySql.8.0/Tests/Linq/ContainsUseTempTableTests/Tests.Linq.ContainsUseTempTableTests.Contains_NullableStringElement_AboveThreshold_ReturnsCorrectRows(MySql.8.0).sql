-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TEMPORARY TABLE `T_2cd61f50e53d`
(
	`item` VARCHAR(4000)     NULL
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `T_2cd61f50e53d`
(
	`item`
)
VALUES
('tag1'),
('tag2'),
('tag4'),
('tag5'),
('tag7'),
('tag8'),
('tag10'),
('tag11'),
('tag13'),
('tag14'),
('tag16'),
('tag17'),
('tag19'),
('tag20'),
('tag22'),
('tag23'),
('tag25'),
('tag26'),
('tag28'),
('tag29')

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	`r`.`Name`,
	`r`.`Tag`
FROM
	`ContainsTempTableTestRow` `r`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`T_2cd61f50e53d` `t1`
		WHERE
			`r`.`Tag` = `t1`.`item` OR `r`.`Tag` IS NULL AND `t1`.`item` IS NULL
	)
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TEMPORARY TABLE IF EXISTS `T_2cd61f50e53d`

