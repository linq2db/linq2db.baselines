BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Person` `c_1`
WHERE
	`c_1`.`LastName` = 'Limonadovy'

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

UPDATE
	`Person` `c_1`
SET
	`c_1`.`FirstName` = 'Johnny'
WHERE
	`c_1`.`LastName` = 'Limonadovy'

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Person` `c_1`
WHERE
	`c_1`.`FirstName` = 'Johnny' AND `c_1`.`LastName` = 'Limonadovy'

