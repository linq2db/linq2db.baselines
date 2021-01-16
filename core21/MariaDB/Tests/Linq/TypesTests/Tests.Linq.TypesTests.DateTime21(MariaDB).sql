BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @dt DateTime
SET     @dt = '2010-12-14 05:00:07.425'

UPDATE
	`LinqDataTypes` `t1`
SET
	`t1`.`DateTimeValue` = @dt
WHERE
	`t1`.`ID` = 1

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @pdt DateTime
SET     @pdt = '2001-01-11 01:11:21.100'

UPDATE
	`LinqDataTypes` `t1`
SET
	`t1`.`DateTimeValue` = @pdt
WHERE
	`t1`.`ID` = 1

