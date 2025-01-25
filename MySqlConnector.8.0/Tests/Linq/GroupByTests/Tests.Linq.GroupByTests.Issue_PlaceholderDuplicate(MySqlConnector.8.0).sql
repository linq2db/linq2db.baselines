BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 100

SELECT
	`t1`.`PersonID`,
	`t1`.`PersonID`
FROM
	`Person` `t1`
GROUP BY
	`t1`.`PersonID`,
	`t1`.`PersonID`
ORDER BY
	`t1`.`PersonID`
LIMIT @take

