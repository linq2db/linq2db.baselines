BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @group Int32
SET     @group = 7

SELECT
	`p`.`Id`,
	FIRST_VALUE(`p`.`Id`) OVER(ORDER BY `p`.`Order` DESC)
FROM
	`Position` `p`
WHERE
	`p`.`Group` = @group

