BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

/*(SELECT @n := 0) `rowcounter`*/
SELECT
	@n:=@n+1,
	`p`.`PersonID`
FROM
	`Person` `p`
, (SELECT @n := 0) `rowcounter`

