BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `TestEqualsTable1`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `TestEqualsTable2`
(
	`Id` INT NOT NULL,
	`FK` INT     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`_`.`Id`
FROM
	`TestEqualsTable1` `_`
WHERE
	EXISTS(
		SELECT 
			*
		FROM
			`TestEqualsTable2` `__`
		WHERE
			`_`.`Id` = `__`.`FK` AND `__`.`Id` IS NULL
	)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `TestEqualsTable2`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `TestEqualsTable1`

