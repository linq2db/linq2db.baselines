-- SqlServer.2019
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

-- SqlServer.2019

SELECT
	[t].[Id],
	[t].[Data]
FROM
	[SampleClass] [t]
WHERE
	JSON_VALUE([t].[Data], N'$.Property1') = N'Pr1'

