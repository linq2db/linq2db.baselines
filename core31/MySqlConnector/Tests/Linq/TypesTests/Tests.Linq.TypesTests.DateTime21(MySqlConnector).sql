BeforeExecute
-- MySqlConnector MySql
DECLARE @dt Datetime -- DateTime
SET     @dt = '2010-12-14 05:00:07.425'

UPDATE
	`LinqDataTypes` `t1`
SET
	`t1`.`DateTimeValue` = @dt
WHERE
	`t1`.`ID` = 1

BeforeExecute
-- MySqlConnector MySql
DECLARE @pdt Datetime -- DateTime
SET     @pdt = '2001-01-11 01:11:21.100'

UPDATE
	`LinqDataTypes` `t1`
SET
	`t1`.`DateTimeValue` = @pdt
WHERE
	`t1`.`ID` = 1

