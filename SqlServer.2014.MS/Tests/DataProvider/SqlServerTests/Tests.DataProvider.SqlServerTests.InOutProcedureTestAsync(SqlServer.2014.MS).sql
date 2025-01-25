BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 1234
DECLARE @outputID Int -- Int32
SET     @outputID = 5678
DECLARE @inputOutputID Int -- Int32
SET     @inputOutputID = 9012
DECLARE @str VarChar(8000) -- AnsiString
SET     @str = N'InputStr'
DECLARE @outputStr VarChar(50) -- AnsiString
SET     @outputStr = N'OuputStr'
DECLARE @inputOutputStr VarChar(50) -- AnsiString
SET     @inputOutputStr = N'InputOutputStr'

[TestDataMS]..[OutRefTest]

