-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`r`.`Value`
FROM
	`TakeSkipClass` `r`
LIMIT @take

