BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
DECLARE @TypedProperty VarChar(2) -- String
SET     @TypedProperty = 'de'

SELECT
	`m_1`.`ID`,
	`m_1`.`ValS`,
	`d`.`ID`,
	`d`.`ValB`,
	`d`.`ValInt`
FROM
	`Issue3757Level1` `m_1`
		INNER JOIN `Issue3757Level2` `d` ON `m_1`.`ID` = `d`.`ParentId`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Issue3757Level2` `c_1`
		WHERE
			`m_1`.`ID` = `c_1`.`ParentId` AND LOCATE(@TypedProperty, `m_1`.`ValS`) > 0 AND
			`m_1`.`ValS` IS NOT NULL
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
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

