BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @filter VarChar(4) -- String
SET     @filter = 'John'
DECLARE @filter_1 VarChar(6) -- String
SET     @filter_1 = 'Tester'

SELECT
	`patient_1`.`PersonID`,
	`patient_1`.`Diagnosis`
FROM
	`Patient` `patient_1`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Person` `p`
				INNER JOIN LATERAL (
					SELECT
						`d`.`PersonID` as `cond`
					FROM
						`Person` `d`
					WHERE
						`d`.`PersonID` = `patient_1`.`PersonID`
					LIMIT 1
				) `t1` ON 1=1
		WHERE
			LOCATE(@filter, `p`.`FirstName`) > 0 AND `p`.`PersonID` = `t1`.`cond`
	) AND
	EXISTS(
		SELECT
			*
		FROM
			`Person` `p_1`
				INNER JOIN LATERAL (
					SELECT
						`d_1`.`PersonID` as `cond`
					FROM
						`Person` `d_1`
					WHERE
						`d_1`.`PersonID` = `patient_1`.`PersonID`
					LIMIT 1
				) `t2` ON 1=1
		WHERE
			LOCATE(@filter_1, `p_1`.`FirstName`) > 0 AND `p_1`.`PersonID` = `t2`.`cond`
	)
ORDER BY
	`patient_1`.`PersonID`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`PersonID`,
	`t1`.`Diagnosis`
FROM
	`Patient` `t1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

