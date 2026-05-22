-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TEMPORARY TABLE `T_746098cde9ef`
(
	`item` VARCHAR(4000)     NULL
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `T_746098cde9ef`
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
	EXISTS(
		SELECT
			*
		FROM
			`T_746098cde9ef` `t1`
		WHERE
			`r`.`Tag` = `t1`.`item` OR `r`.`Tag` IS NULL AND `t1`.`item` IS NULL
	) OR
	`r`.`Tag` IS NULL
ORDER BY
	`r`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TEMPORARY TABLE IF EXISTS `T_746098cde9ef`

