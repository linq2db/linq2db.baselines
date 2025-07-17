BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

CREATE TEMPORARY TABLE `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

INSERT INTO `TempTable`
(
	`ID`
)
SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

DROP TEMPORARY TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE `TempTable`

