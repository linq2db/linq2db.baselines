-- MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 10

SELECT
	COUNT(*) OVER(),
	`id`.`Id`
FROM
	(
		SELECT
			`p`.`Id`
		FROM
			`Issue4629Posts` `p`
		WHERE
			(
				SELECT
					SUM(`a_Tags`.`Weight`)
				FROM
					`Issue4629Tags` `a_Tags`
				WHERE
					`p`.`Id` = `a_Tags`.`PostId` AND `a_Tags`.`Weight` > 1
			) > 5
		ORDER BY
			(
				SELECT
					SUM(`a_Tags_1`.`Weight`)
				FROM
					`Issue4629Tags` `a_Tags_1`
				WHERE
					`p`.`Id` = `a_Tags_1`.`PostId`
			)
		LIMIT @take
	) `id`



