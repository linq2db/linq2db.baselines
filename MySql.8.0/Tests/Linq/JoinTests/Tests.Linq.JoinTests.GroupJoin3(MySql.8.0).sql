BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`key_data_result`.`ParentID`,
	`key_data_result`.`Value1`,
	`_gjd_ch`.`ParentID`,
	`_gjd_ch`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`t`.`ParentID`,
			`t`.`Value1`
		FROM
			`Parent` `t`
		WHERE
			`t`.`ParentID` = 2
	) `key_data_result`
		INNER JOIN `Child` `_gjd_ch` ON `_gjd_ch`.`ParentID` = `key_data_result`.`ParentID`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`ParentID`,
	`t`.`Value1`
FROM
	`Parent` `t`
WHERE
	`t`.`ParentID` = 2

