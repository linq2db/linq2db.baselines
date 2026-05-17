-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Value Int32
SET     @Value = 10
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	`Issue681Table` `t1`
SET
	`t1`.`Value` = @Value
WHERE
	`t1`.`ID` = @ID

