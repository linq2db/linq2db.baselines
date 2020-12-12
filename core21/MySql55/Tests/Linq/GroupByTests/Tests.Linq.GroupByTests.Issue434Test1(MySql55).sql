BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p_1 VarChar(4) -- String
SET     @p_1 = 'test'

SELECT
	`p`.`PersonID`,
	`_gjd_ri`.`PersonID`,
	`_gjd_ri`.`Diagnosis`
FROM
	`Person` `p`
		INNER JOIN `Patient` `_gjd_ri` ON `_gjd_ri`.`PersonID` = `p`.`PersonID`
WHERE
	Lower(`p`.`FirstName`) LIKE Concat('%', Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Lower(@p_1), '~', '~~'), '%', '~%'), '_', '~_'), '?', '~?'), '*', '~*'), '#', '~#'), '[', '~['), ']', '~]'), '%') ESCAPE '~'

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @input_1 VarChar(4) -- String
SET     @input_1 = 'test'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	Lower(`p`.`FirstName`) LIKE Concat('%', Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Lower(@input_1), '~', '~~'), '%', '~%'), '_', '~_'), '?', '~?'), '*', '~*'), '#', '~#'), '[', '~['), ']', '~]'), '%') ESCAPE '~'

