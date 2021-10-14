BeforeExecute
-- SqlServer.2016

CREATE TABLE [ParameterDeduplication]
(
	[Id]      Int            NOT NULL,
	[Int1]    Int            NOT NULL,
	[Int2]    Int            NOT NULL,
	[String1] VarChar(Max)       NULL,
	[String2] NVarChar(4000)     NULL,
	[String3] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int1 Int -- Int32
SET     @Int1 = 2
DECLARE @Int2 Int -- Int32
SET     @Int2 = 2
DECLARE @String1 VarChar(8000) -- AnsiString
SET     @String1 = N'str'
DECLARE @String2 NVarChar(4000) -- String
SET     @String2 = N'str'
DECLARE @String3 NVarChar(4000) -- String
SET     @String3 = N'str'

INSERT INTO [ParameterDeduplication]
(
	[Id],
	[Int1],
	[Int2],
	[String1],
	[String2],
	[String3]
)
VALUES
(
	@Id,
	@Int1,
	@Int2,
	@String1,
	@String2,
	@String3
)

BeforeExecute
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int1 Int -- Int32
SET     @Int1 = 3
DECLARE @Int2 Int -- Int32
SET     @Int2 = 4
DECLARE @String1 VarChar(8000) -- AnsiString
SET     @String1 = N'str1'
DECLARE @String2 NVarChar(4000) -- String
SET     @String2 = N'str2'
DECLARE @String3 NVarChar(4000) -- String
SET     @String3 = N'str3'

INSERT INTO [ParameterDeduplication]
(
	[Id],
	[Int1],
	[Int2],
	[String1],
	[String2],
	[String3]
)
VALUES
(
	@Id,
	@Int1,
	@Int2,
	@String1,
	@String2,
	@String3
)

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Int1],
	[t1].[Int2],
	[t1].[String1],
	[t1].[String2],
	[t1].[String3]
FROM
	[ParameterDeduplication] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [ParameterDeduplication]

