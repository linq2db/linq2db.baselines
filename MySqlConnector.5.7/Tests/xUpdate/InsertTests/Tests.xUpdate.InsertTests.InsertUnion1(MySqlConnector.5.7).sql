-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
			CAST(Floor(CAST(`c_1`.`ChildID` AS DECIMAL(29, 10)) / 10) AS SIGNED) as `Value1`
		FROM
			`Child` `c_1`
		UNION
		SELECT
			Coalesce(`c_2`.`ParentID`, 0) as `ParentID`,
			Floor(CAST(Coalesce(`c_2`.`GrandChildID`, 0) AS DECIMAL(29, 10)) / 100) as `Value1`
		FROM
			`GrandChild` `c_2`
	) `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Parent` `c_1`
WHERE
	`c_1`.`ParentID` > 1000

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

