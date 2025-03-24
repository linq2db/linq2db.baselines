﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p Blob(3) -- Binary
SET     @p = 0x000102

SELECT
	`t`.`DecimalDataType`,
	`t`.`BinaryDataType`,
	`t`.`VarBinaryDataType`,
	`t`.`VarcharDataType`
FROM
	`AllTypes` `t`
WHERE
	`t`.`BinaryDataType` = @p

