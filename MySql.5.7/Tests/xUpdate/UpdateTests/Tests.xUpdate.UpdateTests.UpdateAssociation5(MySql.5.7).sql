BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

UPDATE
	`LinqDataTypes` `t`
		INNER JOIN (
			SELECT DISTINCT
				`a_Table1`.`ID`,
				`a_Table1`.`BoolValue`
			FROM
				`Parent` `x`
					INNER JOIN `LinqDataTypes` `a_Table1` ON `x`.`ParentID` = `a_Table1`.`ID`
			WHERE
				`x`.`ParentID` IN (10000, 20000)
		) `t1` ON `t`.`ID` = `t1`.`ID` AND `t`.`BoolValue` = `t1`.`BoolValue`
SET
	`t`.`BoolValue` = CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				`Parent` `x_1`
			WHERE
				`t1`.`ID` IS NOT NULL AND `t1`.`ID` = `x_1`.`ParentID` AND
				(`x_1`.`Value1` <> 1 OR `x_1`.`Value1` IS NULL)
		)
			THEN 1
		ELSE 0
	END

