﻿BeforeExecute
-- MySql

DROP TABLE IF EXISTS `User`

BeforeExecute
-- MySql

CREATE TABLE IF NOT EXISTS `User`
(
	`city`            VARCHAR(255)     NULL,
	`user_name`       VARCHAR(255)     NULL,
	`street`          VARCHAR(255)     NULL,
	`building_number` INT          NOT NULL
)

BeforeExecute
-- MySql

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
-- MySql

SELECT
	`t1`.`city`,
	`t1`.`user_name`,
	`t1`.`street`,
	`t1`.`building_number`
FROM
	`User` `t1`

BeforeExecute
-- MySql

DROP TABLE IF EXISTS `User`

