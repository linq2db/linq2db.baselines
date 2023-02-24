BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]   Int           NOT NULL,
		[Data] VarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Data_1 VarChar(4000) -- AnsiString
SET     @Data_1 = N'{"Property1":"Pr1"}'

INSERT INTO [SampleClass]
(
	[Id],
	[Data]
)
VALUES
(
	@Id,
	@Data_1
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t].[Id],
	[t].[Data]
FROM
	[SampleClass] [t]
WHERE
	JSON_VALUE([t].[Data], N'$.Property1') = N'Pr1'

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [SampleClass]

