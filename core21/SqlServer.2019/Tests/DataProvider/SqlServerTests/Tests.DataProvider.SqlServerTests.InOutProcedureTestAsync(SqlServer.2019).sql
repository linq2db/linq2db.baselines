BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2019 SqlServer.2017 (asynchronously)
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

[TestData2019]..[OutRefTest]

