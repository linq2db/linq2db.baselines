-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`PictureId`,
	`r`.`Deleted`
FROM
	`SoftDeletedPictureTable` `r`
WHERE
	NOT `r`.`Deleted` AND `r`.`Id` = 1
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`,
	`r`.`PictureId`,
	`r`.`Deleted`
FROM
	`SoftDeletedPictureTable` `r`
WHERE
	NOT `r`.`Deleted` AND `r`.`Id` = 1
LIMIT 2

