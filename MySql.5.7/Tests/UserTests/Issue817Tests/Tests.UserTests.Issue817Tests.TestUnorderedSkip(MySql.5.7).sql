-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Person` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @skip Int32
SET     @skip = 1

SELECT
	1
FROM
	`Person` `t1`
LIMIT @skip, 9223372036854775807

