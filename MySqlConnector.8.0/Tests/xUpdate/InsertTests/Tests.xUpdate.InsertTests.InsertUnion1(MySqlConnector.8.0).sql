BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
SELECT
	`t1`.`ParentID` + 1000,
	`t1`.`Value1`
FROM
	(
		SELECT
			`c_1`.`ParentID`,
			CAST(Floor(CAST(`c_1`.`ChildID` AS DOUBLE) / 10) AS SIGNED) as `Value1`
		FROM
			`Child` `c_1`
		UNION
		SELECT
			Coalesce(`c_2`.`ParentID`, 0) as `ParentID`,
			Floor(CAST(Coalesce(`c_2`.`GrandChildID`, 0) AS DOUBLE) / 100) as `Value1`
		FROM
			`GrandChild` `c_2`
	) `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Parent` `c_1`
WHERE
	`c_1`.`ParentID` > 1000

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

