BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

/*(SELECT @n := 0) `rowcounter`*/
SELECT
	@n:=@n+1,
	`p`.`PersonID`
FROM
	`Person` `p`
, (SELECT @n := 0) `rowcounter`

