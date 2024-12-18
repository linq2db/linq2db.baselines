BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `DynamicParent`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `DynamicParent`
(
	`ID` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_DynamicParent` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `DynamicChild`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `DynamicChild`
(
	`ID`       INT AUTO_INCREMENT NOT NULL,
	`ParentID` INT                NOT NULL,

	CONSTRAINT `PK_DynamicChild` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`it`.`ID`
FROM
	`DynamicParent` `it`
		LEFT JOIN `DynamicChild` `a_Child` ON `it`.`ID` = `a_Child`.`ParentID`
WHERE
	`a_Child`.`ID` = 123 AND `a_Child`.`ID` IS NOT NULL

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `DynamicChild`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `DynamicParent`

