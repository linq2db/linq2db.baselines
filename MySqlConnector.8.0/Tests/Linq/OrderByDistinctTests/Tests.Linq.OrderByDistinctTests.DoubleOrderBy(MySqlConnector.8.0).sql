BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 3

SELECT
	`q1`.`Id`,
	`q1`.`DuplicateData`,
	`q1`.`OrderData1`,
	`q1`.`OrderData2`
FROM
	(
		SELECT
			`t1`.`Id`
		FROM
			`OrderByDistinctData` `t1`
		ORDER BY
			`t1`.`OrderData2`
		LIMIT @take
	) `q2`
		INNER JOIN `OrderByDistinctData` `q1` ON `q1`.`Id` = `q2`.`Id`
ORDER BY
	`q1`.`OrderData1`

