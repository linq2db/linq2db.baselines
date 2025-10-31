-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @skip Int32
SET     @skip = 2

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
				LIMIT @skip, 9223372036854775807
			) `t2`
	) `t3`

