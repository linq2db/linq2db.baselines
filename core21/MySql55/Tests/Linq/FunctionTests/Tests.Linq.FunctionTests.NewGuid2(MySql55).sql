BeforeExecute
-- MySql55 MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	Uuid()
FROM
	`LinqDataTypes` `p`
LIMIT @take

