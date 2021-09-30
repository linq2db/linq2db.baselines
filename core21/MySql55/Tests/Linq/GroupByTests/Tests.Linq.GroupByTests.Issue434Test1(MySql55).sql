﻿BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p_2 VarChar(4) -- String
SET     @p_2 = 'test'

SELECT
	`p`.`PersonID`,
	`_gjd_ri`.`PersonID`,
	`_gjd_ri`.`Diagnosis`
FROM
	`Person` `p`
		INNER JOIN `Patient` `_gjd_ri` ON `_gjd_ri`.`PersonID` = `p`.`PersonID`
WHERE
	LOCATE(@p_2, Lower(`p`.`FirstName`)) > 0

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @input_2 VarChar(4) -- String
SET     @input_2 = 'test'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`
FROM
	`Person` `p`
WHERE
	LOCATE(@input_2, Lower(`p`.`FirstName`)) > 0

