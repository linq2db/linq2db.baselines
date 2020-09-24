BeforeExecute
-- MySql55 MySql.Official MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

BeforeExecute
-- MySql55 MySql.Official MySql

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
			Cast(Floor(Floor(Cast(`c_1`.`ChildID` as Decimal(29,10)) / 10)) as SIGNED) as `Value1`
		FROM
			`Child` `c_1`
		UNION
		SELECT
			Coalesce(`c_2`.`ParentID`, 0) as `ParentID`,
			Floor(Cast(Coalesce(`c_2`.`GrandChildID`, 0) as Decimal(29,10)) / 100) as `Value1`
		FROM
			`GrandChild` `c_2`
	) `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Parent` `c_1`
WHERE
	`c_1`.`ParentID` > 1000

BeforeExecute
-- MySql55 MySql.Official MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

