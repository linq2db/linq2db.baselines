BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `UserStruct`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `UserStruct`
(
	`city`            VARCHAR(4000)     NULL,
	`user_name`       VARCHAR(4000)     NULL,
	`street`          VARCHAR(4000)     NULL,
	`building_number` INT           NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `UserStruct`
(
	`city`,
	`user_name`,
	`street`,
	`building_number`
)
VALUES
('Springwood','Freddy','Elm Street',13)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @City VarChar(10) -- String
SET     @City = 'Springwood'
DECLARE @Street VarChar(10) -- String
SET     @Street = 'Elm Street'
DECLARE @Building Int32
SET     @Building = 13

SELECT
	`u`.`user_name`,
	`u`.`city`,
	`u`.`street`,
	`u`.`building_number`
FROM
	`UserStruct` `u`
WHERE
	`u`.`city` = @City AND `u`.`street` = @Street AND `u`.`building_number` = @Building
LIMIT 2

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `UserStruct`

