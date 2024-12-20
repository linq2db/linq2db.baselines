BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `User`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `User`
(
	`FirstName` VARCHAR(4000)     NULL,
	`Status`    INT               NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`user_1`.`FirstName`,
	`user_1`.`Status`
FROM
	`User` `user_1`
WHERE
	`user_1`.`Status` IS NULL

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `User`

