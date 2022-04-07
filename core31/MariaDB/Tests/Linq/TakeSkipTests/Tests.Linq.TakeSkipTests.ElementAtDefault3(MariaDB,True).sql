BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @n Int32
SET     @n = 3
DECLARE @take Int32
SET     @take = 1

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` > 1
LIMIT @n, @take

