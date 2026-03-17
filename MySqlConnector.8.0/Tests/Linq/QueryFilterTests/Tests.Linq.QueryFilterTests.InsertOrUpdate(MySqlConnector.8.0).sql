-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue5289Table`
(
	`Id`,
	`PictureId`,
	`Deleted`
)
VALUES
(
	1,
	2,
	0
)
ON DUPLICATE KEY UPDATE
	`PictureId` = 3

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`Id`,
	`r`.`PictureId`,
	`r`.`Deleted`
FROM
	`Issue5289Table` `r`
WHERE
	NOT `r`.`Deleted` AND `r`.`Id` = 1
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue5289Table`
(
	`Id`,
	`PictureId`,
	`Deleted`
)
VALUES
(
	1,
	2,
	0
)
ON DUPLICATE KEY UPDATE
	`PictureId` = 3

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`Id`,
	`r`.`PictureId`,
	`r`.`Deleted`
FROM
	`Issue5289Table` `r`
WHERE
	NOT `r`.`Deleted` AND `r`.`Id` = 1
LIMIT 2

