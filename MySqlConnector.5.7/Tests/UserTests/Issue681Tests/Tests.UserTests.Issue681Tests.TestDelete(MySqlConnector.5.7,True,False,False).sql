-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 5

DELETE  
FROM
	`Issue681Table`
WHERE
	`Issue681Table`.`ID` = @ID

