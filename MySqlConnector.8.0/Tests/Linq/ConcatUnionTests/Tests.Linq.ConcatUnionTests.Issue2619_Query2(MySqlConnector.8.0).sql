﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`item_1`.`FirstName`,
	`item_1`.`PersonID`,
	`item_1`.`LastName`,
	`item_1`.`MiddleName`,
	`item_1`.`Gender`
FROM
	`Person` `item_1`
UNION
SELECT
	`item_2`.`FirstName`,
	`item_2`.`PersonID`,
	`item_2`.`LastName`,
	`item_2`.`MiddleName`,
	`item_2`.`Gender`
FROM
	`Person` `item_2`

