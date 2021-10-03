BeforeExecute
-- MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`l`.`ParentID`
FROM
	`Child` `l`
LIMIT @take

BeforeExecute
-- MySql

SELECT
	1
FROM
	`Parent` `sep`

