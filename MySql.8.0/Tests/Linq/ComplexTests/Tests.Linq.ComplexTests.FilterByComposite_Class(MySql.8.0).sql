BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `User`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `User`
(
	`city`            VARCHAR(4000)     NULL,
	`user_name`       VARCHAR(4000)     NULL,
	`street`          VARCHAR(4000)     NULL,
	`building_number` INT           NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `User`
(
	`city`,
	`user_name`,
	`street`,
	`building_number`
)
VALUES
('Springwood','Freddy','Elm Street',13)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
	`User` `u`
WHERE
	`u`.`city` = @City AND `u`.`street` = @Street AND `u`.`building_number` = @Building
LIMIT 2

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `User`

