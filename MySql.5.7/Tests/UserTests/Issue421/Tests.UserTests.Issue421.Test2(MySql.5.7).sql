-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `BlobClass`
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
	`BlobClass` `t1`
WHERE
	`t1`.`Id` = 1
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

UPDATE
	`BlobClass` `t1`
SET
	`t1`.`BlobValue` = 0x030201
WHERE
	`t1`.`Id` = 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`BlobValue`
FROM
	`BlobClass` `t1`
WHERE
	`t1`.`Id` = 1
LIMIT 1

