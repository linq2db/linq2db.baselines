BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` >= 1000

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(1000,NULL),
(1001,NULL)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` = 1000 AND `Parent`.`Value1` IS NULL OR
	`Parent`.`ParentID` = 1001 AND `Parent`.`Value1` IS NULL

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` >= 1000

