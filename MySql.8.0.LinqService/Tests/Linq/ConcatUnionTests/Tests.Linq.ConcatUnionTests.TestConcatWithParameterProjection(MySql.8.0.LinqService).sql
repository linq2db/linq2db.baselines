BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @someValue Int32
SET     @someValue = 3

SELECT
	@someValue,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` <= @someValue
UNION ALL
SELECT
	@someValue,
	`c_2`.`ChildID`
FROM
	`Child` `c_2`
WHERE
	`c_2`.`ChildID` > @someValue

