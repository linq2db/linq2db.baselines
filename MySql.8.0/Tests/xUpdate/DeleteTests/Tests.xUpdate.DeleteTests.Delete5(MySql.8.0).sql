-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @values Int32
SET     @values = 1001

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	@values,
	1
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @values Int32
SET     @values = 1002

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	@values,
	1
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	COUNT(*)
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` IN (1001, 1002)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	COUNT(*)
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

