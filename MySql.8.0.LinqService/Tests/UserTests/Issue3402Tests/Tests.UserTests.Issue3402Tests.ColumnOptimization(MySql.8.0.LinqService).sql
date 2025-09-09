BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`ess`.`ID`
FROM
	`VEMPLOYEE_SCH_SEC` `ess`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`VEMPLOYEE_SCHDL_PERM` `y`
		WHERE
			`ess`.`ID` = `y`.`ID` AND `y`.`IS_ACTIVE`
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`ess`.`ID`
FROM
	`VEMPLOYEE_SCH_SEC` `ess`

