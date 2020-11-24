BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `User`
(
	`city`            VARCHAR(255)     NULL,
	`user_name`       VARCHAR(255)     NULL,
	`street`          VARCHAR(255)     NULL,
	`building_number` INT          NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`u`.`city`
FROM
	`User` `u`

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`u`.`street`
FROM
	`User` `u`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `User`

