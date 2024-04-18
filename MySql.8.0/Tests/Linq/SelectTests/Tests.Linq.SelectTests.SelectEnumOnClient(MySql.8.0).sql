BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`person_1`.`PersonID`
FROM
	`Person` `person_1`
LIMIT @take

