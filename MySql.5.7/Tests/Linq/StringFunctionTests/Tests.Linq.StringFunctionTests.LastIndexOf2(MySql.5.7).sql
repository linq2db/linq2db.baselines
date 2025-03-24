BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`PersonID`,
	Concat('123', `p`.`FirstName`, '012345')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND (Char_Length(Concat('123', `p`.`FirstName`, '012345')) - Locate('321', Reverse(Substring(Concat('123', `p`.`FirstName`, '012345'), 6, Char_Length(Concat('123', `p`.`FirstName`, '012345')) - 5)))) - Char_Length('123') = 7 AND
	Locate('123', Concat('123', `p`.`FirstName`, '012345'), 6) <> 0

