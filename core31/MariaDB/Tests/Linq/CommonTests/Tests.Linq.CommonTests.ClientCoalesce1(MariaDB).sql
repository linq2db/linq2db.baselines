BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @p1 Int32
SET     @p1 = 100

SELECT
	Coalesce(`p`.`Value1`, @p1)
FROM
	`Parent` `p`

