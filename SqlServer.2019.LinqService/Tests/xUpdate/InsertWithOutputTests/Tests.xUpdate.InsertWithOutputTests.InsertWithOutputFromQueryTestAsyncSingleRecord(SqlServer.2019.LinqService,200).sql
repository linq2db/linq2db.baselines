BeforeExecute
--  SqlServer.2019
DECLARE @param Int -- Int32
SET     @param = 200

SELECT
	[s].[Id] + @param,
	[s].[Value] + @param,
	[s].[ValueStr] + CAST(@param AS VarChar(11))
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 3

