BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @someValue Int32
SET     @someValue = 3
DECLARE @someValue_1 Int32
SET     @someValue_1 = 3

SELECT
	CAST(@someValue AS SIGNED),
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` <= @someValue_1
UNION ALL
SELECT
	CAST(@someValue AS SIGNED),
	`c_2`.`ChildID`
FROM
	`Child` `c_2`
WHERE
	`c_2`.`ChildID` > @someValue_1

