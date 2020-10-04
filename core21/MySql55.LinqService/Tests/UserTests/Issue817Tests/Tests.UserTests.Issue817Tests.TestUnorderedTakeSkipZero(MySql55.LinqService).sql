BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 1

SELECT
	1
FROM
	`Person` `_`
LIMIT @skip,@take

