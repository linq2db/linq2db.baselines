-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TEMPORARY TABLE `T_33aed87e6bd8`
(
	`item` VARCHAR(4000)     NULL
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `T_33aed87e6bd8`
(
	`item`
)
VALUES
('tag1'),
('tag2'),
('tag4'),
('tag5'),
('tag7'),
('tag8')

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	`r`.`Name`,
	`r`.`Tag`
FROM
	`ContainsTempTableTestRow` `r`
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			`T_33aed87e6bd8` `t1`
		WHERE
			`r`.`Tag` = `t1`.`item` OR `r`.`Tag` IS NULL AND `t1`.`item` IS NULL
	) AND
	`r`.`Tag` IS NOT NULL
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TEMPORARY TABLE IF EXISTS `T_33aed87e6bd8`

