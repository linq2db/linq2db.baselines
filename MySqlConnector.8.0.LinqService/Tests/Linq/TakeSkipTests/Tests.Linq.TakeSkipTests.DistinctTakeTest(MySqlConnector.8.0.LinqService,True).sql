BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`r`.`Value`
FROM
	`TakeSkipClass` `r`
LIMIT @take

