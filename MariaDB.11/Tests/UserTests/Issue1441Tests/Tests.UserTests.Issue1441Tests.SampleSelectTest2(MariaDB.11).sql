﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`author`.`Id`,
	`author`.`Name`
FROM
	`Authors` `author`
		INNER JOIN `Books` `book` ON `book`.`AuthorId` = `author`.`Id`

