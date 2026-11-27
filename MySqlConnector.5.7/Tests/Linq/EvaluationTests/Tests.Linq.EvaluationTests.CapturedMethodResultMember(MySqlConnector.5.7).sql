-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 5

INSERT INTO `ClientEvaluatedRecord`
(
	`ID`
)
VALUES
(
	@ID
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Item1 Int32
SET     @Item1 = 5

SELECT
	`t1`.`ID`
FROM
	`ClientEvaluatedRecord` `t1`
WHERE
	`t1`.`ID` = @Item1
LIMIT 2

