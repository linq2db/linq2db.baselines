-- MySql.5.7 MySql.5.7.MySql.Data MySql57
INSERT INTO `BlobValueEntity`
(
	`Id`,
	`BlobValue`
)
VALUES
(
	1,
	0x010203
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`BlobValue`
FROM
	`BlobValueEntity` `t1`
WHERE
	`t1`.`Id` = 1
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`BlobValue`
FROM
	`BlobValueEntity` `t1`
WHERE
	`t1`.`Id` = 1
LIMIT 1

