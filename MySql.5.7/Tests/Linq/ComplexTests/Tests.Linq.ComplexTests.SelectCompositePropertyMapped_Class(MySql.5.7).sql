BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `User`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `User`
(
	`city`            VARCHAR(4000)     NULL,
	`user_name`       VARCHAR(4000)     NULL,
	`street`          VARCHAR(4000)     NULL,
	`building_number` INT           NOT NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT DISTINCT
	`u`.`city`,
	`u`.`street`,
	`u`.`building_number`
FROM
	`User` `u`
LIMIT 2

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `User`

