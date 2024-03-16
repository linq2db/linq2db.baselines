BeforeExecute
-- MySql MySql.Official MySql

DELETE   `c_1`
FROM
	`Parent` `c_1`
WHERE
	`c_1`.`ParentID` >= 1000

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(1000,NULL),
(1001,NULL)

BeforeExecute
-- MySql MySql.Official MySql

DELETE   `p`
FROM
	`Parent` `p`
WHERE
	(`p`.`ParentID` = 1000 AND `p`.`Value1` IS NULL OR `p`.`ParentID` = 1001 AND `p`.`Value1` IS NULL)

BeforeExecute
-- MySql MySql.Official MySql

DELETE   `c_1`
FROM
	`Parent` `c_1`
WHERE
	`c_1`.`ParentID` >= 1000

