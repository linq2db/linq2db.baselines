-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`BlobValue`
FROM
	`BlobClass` `t1`
WHERE
	`t1`.`Id` = 1
LIMIT 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

UPDATE
	`BlobClass` `t1`
SET
	`t1`.`BlobValue` = 0x030201
WHERE
	`t1`.`Id` = 1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`BlobValue`
FROM
	`BlobClass` `t1`
WHERE
	`t1`.`Id` = 1
LIMIT 1

