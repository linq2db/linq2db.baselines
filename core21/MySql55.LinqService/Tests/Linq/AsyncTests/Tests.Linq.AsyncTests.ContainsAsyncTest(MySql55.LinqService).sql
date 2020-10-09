BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @ID Int32
SET     @ID = 1

SELECT 
	EXISTS(
		SELECT 
			*
		FROM
			`Person` `t1`
		WHERE
			`t1`.`PersonID` = @ID
	) as `c1`

