-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `t1`
LIMIT 1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ID Int32
SET     @ID = 5

DELETE  
FROM
	`testdata`.`Issue681Table`
WHERE
	`testdata`.`Issue681Table`.`ID` = @ID

