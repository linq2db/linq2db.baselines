-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`r`.`Id`,
	`r`.`PictureId`
FROM
	`Issue5289Table` `r`
WHERE
	(`r`.`Deleted` = 0 OR `r`.`Deleted` IS NULL) AND `r`.`Id` = 1
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`r`.`Id`,
	`r`.`PictureId`
FROM
	`Issue5289Table` `r`
WHERE
	(`r`.`Deleted` = 0 OR `r`.`Deleted` IS NULL) AND `r`.`Id` = 1
LIMIT 2

