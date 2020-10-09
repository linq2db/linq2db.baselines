BeforeExecute
-- MySql MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	(
		SELECT 
			`p`.`Value1`
		FROM
			`Parent` `p`
		LIMIT @take
	) as `f1`

