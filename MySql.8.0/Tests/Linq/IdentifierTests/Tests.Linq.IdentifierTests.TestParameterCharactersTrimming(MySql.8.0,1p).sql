﻿BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p Int32
SET     @p = 2

UPDATE
	`testparams` `t`
SET
	`t`.`1p` = @p
WHERE
	`t`.`1p` = 1

