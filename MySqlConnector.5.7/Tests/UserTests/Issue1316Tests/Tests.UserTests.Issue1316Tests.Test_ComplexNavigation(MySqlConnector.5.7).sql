-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 5

INSERT INTO `Issue1316Tests`
(
	`ID`
)
VALUES
(
	@ID
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p Int32
SET     @p = 5

SELECT
	`t1`.`ID`
FROM
	`Issue1316Tests` `t1`
WHERE
	`t1`.`ID` = @p
LIMIT 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 5

SELECT
	`t1`.`ID`
FROM
	`Issue1316Tests` `t1`
WHERE
	`t1`.`ID` = @Id
LIMIT 2

