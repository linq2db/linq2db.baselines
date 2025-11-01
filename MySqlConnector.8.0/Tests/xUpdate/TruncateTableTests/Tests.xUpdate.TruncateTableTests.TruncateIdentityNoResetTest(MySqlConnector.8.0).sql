-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE FROM `test_temp`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	1
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	1
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 1

SELECT
	`t1`.`ID`,
	`t1`.`Field1`
FROM
	`test_temp` `t1`
ORDER BY
	`t1`.`ID`
LIMIT @skip, 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE FROM `test_temp`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	1
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	1
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 1

SELECT
	`t1`.`ID`,
	`t1`.`Field1`
FROM
	`test_temp` `t1`
ORDER BY
	`t1`.`ID`
LIMIT @skip, 2

