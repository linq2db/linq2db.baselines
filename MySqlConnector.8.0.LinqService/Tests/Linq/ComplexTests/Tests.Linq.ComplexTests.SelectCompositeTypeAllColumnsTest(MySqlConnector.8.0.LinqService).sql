﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `User`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `User`
(
	`city`            VARCHAR(4000)     NULL,
	`user_name`       VARCHAR(4000)     NULL,
	`street`          VARCHAR(4000)     NULL,
	`building_number` INT           NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Residence_City VarChar(10) -- String
SET     @Residence_City = 'Springwood'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Freddy'
DECLARE @Residence_Street VarChar(10) -- String
SET     @Residence_Street = 'Elm Street'
DECLARE @Residence_Building Int32
SET     @Residence_Building = 13

INSERT INTO `User`
(
	`city`,
	`user_name`,
	`street`,
	`building_number`
)
VALUES
(
	@Residence_City,
	@Name,
	@Residence_Street,
	@Residence_Building
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`city`,
	`t1`.`user_name`,
	`t1`.`street`,
	`t1`.`building_number`
FROM
	`User` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `User`

