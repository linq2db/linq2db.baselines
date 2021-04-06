BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
DECLARE @aInParam VarChar(256) -- AnsiString
SET     @aInParam = 'test'
DECLARE @aOutParam Byte -- SByte
SET     @aOutParam = NULL

`testdata2`.`TestOutputParametersWithoutTableProcedure`

