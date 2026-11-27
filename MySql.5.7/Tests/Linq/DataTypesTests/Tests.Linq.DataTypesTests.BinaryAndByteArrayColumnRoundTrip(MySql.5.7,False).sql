-- MySql.5.7 MySql.5.7.MySql.Data MySql57
INSERT INTO `BinaryColumnRecord`
(
	`ID`,
	`Array`,
	`Binary`
)
VALUES
(
	1,
	0x010203,
	0x0405
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`ID`,
	`t1`.`Array`,
	`t1`.`Binary`
FROM
	`BinaryColumnRecord` `t1`
WHERE
	`t1`.`ID` = 1
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`ID`,
	`t1`.`Array`,
	`t1`.`Binary`
FROM
	`BinaryColumnRecord` `t1`
WHERE
	`t1`.`Array` = 0x010203
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`ID`,
	`t1`.`Array`,
	`t1`.`Binary`
FROM
	`BinaryColumnRecord` `t1`
WHERE
	`t1`.`Binary` = 0x0405
LIMIT 2

