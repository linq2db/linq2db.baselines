BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Length Int32
SET     @Length = 1

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	(CHAR_LENGTH(`p`.`LastName`) - Locate('p', Reverse(`p`.`LastName`))) - @Length = 1 AND
	Locate('p', `p`.`LastName`) <> 0 AND `p`.`PersonID` = 1

