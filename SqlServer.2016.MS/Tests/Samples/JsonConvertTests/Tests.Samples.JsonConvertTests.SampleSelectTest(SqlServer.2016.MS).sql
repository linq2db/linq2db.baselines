BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Data VarChar(4000) -- AnsiString
SET     @Data = N'{"Property1":"Pr1"}'

INSERT INTO [SampleClass]
(
	[Id],
	[Data]
)
VALUES
(
	@Id,
	@Data
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t].[Id],
	[t].[Data]
FROM
	[SampleClass] [t]
WHERE
	JSON_VALUE([t].[Data], N'$.Property1') = N'Pr1'

