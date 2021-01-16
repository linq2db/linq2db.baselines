BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @aInParam VarChar(4) -- AnsiString
SET     @aInParam = 'test'
DECLARE @aOutParam Byte -- SByte
SET     @aOutParam = NULL

`testdata`.`TestOutputParametersWithoutTableProcedure`

