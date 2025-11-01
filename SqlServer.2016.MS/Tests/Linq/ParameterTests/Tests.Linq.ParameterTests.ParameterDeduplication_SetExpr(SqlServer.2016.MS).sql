-- SqlServer.2016.MS SqlServer.2016
DECLARE @int1 Int -- Int32
SET     @int1 = 2
DECLARE @int2 Int -- Int32
SET     @int2 = 2
DECLARE @intN1 Int -- Int32
SET     @intN1 = 2
DECLARE @intN2 Int -- Int32
SET     @intN2 = 2
DECLARE @str1 VarChar(8000) -- AnsiString
SET     @str1 = N'str'
DECLARE @str2 NVarChar(4000) -- String
SET     @str2 = N'str'
DECLARE @str3 NVarChar(4000) -- String
SET     @str3 = N'str'
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[ParameterDeduplication]
SET
	[Int1] = @int1,
	[Int2] = @int2,
	[IntN1] = @intN1,
	[IntN2] = @intN2,
	[String1] = @str1,
	[String2] = @str2,
	[String3] = @str3
WHERE
	[ParameterDeduplication].[Id] = @id

-- SqlServer.2016.MS SqlServer.2016
DECLARE @int1 Int -- Int32
SET     @int1 = 3
DECLARE @int2 Int -- Int32
SET     @int2 = 4
DECLARE @intN1 Int -- Int32
SET     @intN1 = 5
DECLARE @intN2 Int -- Int32
SET     @intN2 = 6
DECLARE @str1 VarChar(8000) -- AnsiString
SET     @str1 = N'str1'
DECLARE @str2 NVarChar(4000) -- String
SET     @str2 = N'str2'
DECLARE @str3 NVarChar(4000) -- String
SET     @str3 = N'str3'
DECLARE @id Int -- Int32
SET     @id = 2

UPDATE
	[ParameterDeduplication]
SET
	[Int1] = @int1,
	[Int2] = @int2,
	[IntN1] = @intN1,
	[IntN2] = @intN2,
	[String1] = @str1,
	[String2] = @str2,
	[String3] = @str3
WHERE
	[ParameterDeduplication].[Id] = @id

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Int1],
	[t1].[Int2],
	[t1].[IntN1],
	[t1].[IntN2],
	[t1].[String1],
	[t1].[String2],
	[t1].[String3]
FROM
	[ParameterDeduplication] [t1]
ORDER BY
	[t1].[Id]

