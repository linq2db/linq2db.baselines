-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue5289Table`
(
	`Id`,
	`PictureId`
)
VALUES
(
	1,
	2
)
ON DUPLICATE KEY UPDATE
	`PictureId` = 3

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`Id`,
	`r`.`PictureId`
FROM
	`Issue5289Table` `r`
WHERE
	(`r`.`Deleted` = 0 OR `r`.`Deleted` IS NULL) AND `r`.`Id` = 1
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue5289Table`
(
	`Id`,
	`PictureId`
)
VALUES
(
	1,
	2
)
ON DUPLICATE KEY UPDATE
	`PictureId` = 3

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`Id`,
	`r`.`PictureId`
FROM
	`Issue5289Table` `r`
WHERE
	(`r`.`Deleted` = 0 OR `r`.`Deleted` IS NULL) AND `r`.`Id` = 1
LIMIT 2

