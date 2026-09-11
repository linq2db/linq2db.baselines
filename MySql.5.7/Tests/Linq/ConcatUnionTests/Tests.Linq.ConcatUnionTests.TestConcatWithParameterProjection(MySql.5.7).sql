-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @someValue Int32
SET     @someValue = 3

SELECT
	CAST(@someValue AS SIGNED),
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` <= @someValue
UNION ALL
SELECT
	CAST(@someValue AS SIGNED),
	`c_2`.`ChildID`
FROM
	`Child` `c_2`
WHERE
	`c_2`.`ChildID` > @someValue

