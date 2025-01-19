BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 4

SELECT
	`t3`.`F2`
FROM
	(
		SELECT DISTINCT
			`t2`.`F1`,
			`t2`.`F2`
		FROM
			(
				SELECT
					`t1`.`F1`,
					`t1`.`F2`
				FROM
					`DistinctOrderByTable` `t1`
				ORDER BY
					`t1`.`F3` DESC
				LIMIT @skip, @take
			) `t2`
	) `t3`

