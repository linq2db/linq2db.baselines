BeforeExecute
-- MySql MySql.Official MySql
DECLARE @_default Int32
SET     @_default = 0

SELECT
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	Coalesce(`p`.`Value1`, @_default) > 0

