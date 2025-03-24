﻿BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

INSERT INTO `TempTable`
(
	`ID`
)
SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`ID`
FROM
	`Parent` `p`
		INNER JOIN `TempTable` `t` ON `p`.`ParentID` = `t`.`ID`

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

DROP TABLE IF EXISTS `TempTable`

