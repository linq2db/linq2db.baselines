-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` >= 1000

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(1000,NULL),
(1001,NULL)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` = 1000 AND `Parent`.`Value1` IS NULL OR
	`Parent`.`ParentID` = 1001 AND `Parent`.`Value1` IS NULL

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` >= 1000

