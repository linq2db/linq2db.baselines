BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`p`.`Taxonomy`
FROM
	`Doctor` `p`
WHERE
	Lower(`p`.`Taxonomy`) = 'psychiatry'

