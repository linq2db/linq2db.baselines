-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `SoftDeletedPictureTable`
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`PictureId`,
	`r`.`Deleted`
FROM
	`SoftDeletedPictureTable` `r`
WHERE
	NOT `r`.`Deleted` AND `r`.`Id` = 1
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `SoftDeletedPictureTable`
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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`PictureId`,
	`r`.`Deleted`
FROM
	`SoftDeletedPictureTable` `r`
WHERE
	NOT `r`.`Deleted` AND `r`.`Id` = 1
LIMIT 2

