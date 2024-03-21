﻿BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`m_1`.`FirstName`,
	`d`.`FirstName`,
	`d`.`PersonID`,
	`d`.`LastName`,
	`d`.`MiddleName`,
	`d`.`Gender`
FROM
	(
		SELECT DISTINCT
			`_`.`FirstName`
		FROM
			`Person` `_`
	) `m_1`
		INNER JOIN `Person` `d` ON `m_1`.`FirstName` = `d`.`FirstName`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`_`.`FirstName`
FROM
	`Person` `_`
GROUP BY
	`_`.`FirstName`

