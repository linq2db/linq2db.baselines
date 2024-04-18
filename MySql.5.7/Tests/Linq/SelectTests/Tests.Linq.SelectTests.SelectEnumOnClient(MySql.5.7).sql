BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @take Int32
SET     @take = 1

SELECT
	`person_1`.`PersonID`
FROM
	`Person` `person_1`
LIMIT @take

