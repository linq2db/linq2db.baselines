﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `CteChild`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `CteChild`
(
	`ChildID`  INT NOT NULL,
	`ParentID` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `CteChild`
(
	`ChildID`,
	`ParentID`
)
VALUES
(1000,0),
(1001,1),
(1002,2),
(1003,3),
(1004,4),
(1005,5),
(1006,6),
(1007,7),
(1008,8),
(1009,9)

BeforeExecute
-- MySql MySql.Official MySql

WITH `CTE_1` (`ParentID`, `ChildID`)
AS
(
	SELECT
		`c_1`.`ParentID`,
		`c_1`.`ChildID`
	FROM
		`CteChild` `c_1`
	WHERE
		`c_1`.`ParentID` % 2 = 0
)
DELETE   `c_2`
FROM
	`CteChild` `c_2`
		INNER JOIN `CTE_1` `ct` ON `ct`.`ParentID` = `c_2`.`ParentID`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `CteChild`

