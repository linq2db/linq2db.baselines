﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue3757Level1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue3757Level1`
(
	`ID`     INT           NOT NULL,
	`ValS`   VARCHAR(4000)     NULL,
	`ValB`   BOOLEAN           NULL,
	`ValInt` INT               NULL,

	CONSTRAINT `PK_Issue3757Level1` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue3757Level2`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue3757Level2`
(
	`ID`       INT           NOT NULL,
	`ParentId` INT           NOT NULL,
	`ValS`     VARCHAR(4000)     NULL,
	`ValB`     BOOLEAN           NULL,
	`ValInt`   INT               NULL,

	CONSTRAINT `PK_Issue3757Level2` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
DisposeTransaction
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue3757Level2`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue3757Level1`

