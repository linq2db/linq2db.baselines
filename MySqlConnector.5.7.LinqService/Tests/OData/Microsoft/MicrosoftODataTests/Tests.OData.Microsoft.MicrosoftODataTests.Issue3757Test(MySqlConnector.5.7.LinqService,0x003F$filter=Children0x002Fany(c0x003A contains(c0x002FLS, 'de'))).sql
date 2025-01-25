BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @TypedProperty VarChar(2) -- String
SET     @TypedProperty = 'de'

SELECT
	`m_1`.`ID`,
	`m_1`.`ValS`,
	`d`.`ID`,
	`d`.`ValB`,
	`d`.`ValInt`
FROM
	(
		SELECT DISTINCT
			`l1`.`ID`,
			`l1`.`ValS`
		FROM
			`Issue3757Level1` `l1`
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					`Issue3757Level2` `c_1`
				WHERE
					`l1`.`ID` = `c_1`.`ParentId` AND LOCATE(@TypedProperty, `l1`.`ValS`) > 0 AND
					`l1`.`ValS` IS NOT NULL
			)
	) `m_1`
		INNER JOIN `Issue3757Level2` `d` ON `m_1`.`ID` = `d`.`ParentId`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @TypedProperty VarChar(2) -- String
SET     @TypedProperty = 'de'

SELECT
	`it`.`ID`,
	`it`.`ValB`,
	`it`.`ValS`,
	`it`.`ValInt`
FROM
	`Issue3757Level1` `it`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Issue3757Level2` `c_1`
		WHERE
			`it`.`ID` = `c_1`.`ParentId` AND LOCATE(@TypedProperty, `it`.`ValS`) > 0 AND
			`it`.`ValS` IS NOT NULL
	)

