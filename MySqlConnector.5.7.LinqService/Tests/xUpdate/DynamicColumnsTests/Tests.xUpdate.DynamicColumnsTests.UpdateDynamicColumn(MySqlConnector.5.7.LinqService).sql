﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	'John',
	'Limonadovy',
	'M'
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Person` `c_1`
WHERE
	`c_1`.`LastName` = 'Limonadovy'

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

UPDATE
	`Person` `c_1`
SET
	`c_1`.`FirstName` = 'Johnny'
WHERE
	`c_1`.`LastName` = 'Limonadovy'

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Person` `c_1`
WHERE
	`c_1`.`FirstName` = 'Johnny' AND `c_1`.`LastName` = 'Limonadovy'

