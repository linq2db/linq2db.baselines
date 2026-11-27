-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`BlobValue`
FROM
	`BlobValueEntity` `t1`
WHERE
	`t1`.`Id` = 1
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
UPDATE
	`BlobValueEntity` `t1`
SET
	`t1`.`BlobValue` = 0x030201
WHERE
	`t1`.`Id` = 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`BlobValue`
FROM
	`BlobValueEntity` `t1`
WHERE
	`t1`.`Id` = 1
LIMIT 1

