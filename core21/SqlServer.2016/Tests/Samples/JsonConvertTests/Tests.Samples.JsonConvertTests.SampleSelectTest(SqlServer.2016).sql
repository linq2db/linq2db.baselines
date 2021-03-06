﻿BeforeExecute
-- SqlServer.2016

CREATE TABLE [SampleClass]
(
	[Id]   Int           NOT NULL,
	[Data] VarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2016
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
-- SqlServer.2016

SELECT
	[t].[Id],
	[t].[Data]
FROM
	[SampleClass] [t]
WHERE
	JSON_VALUE([t].[Data], N'$.Property1') = 'Pr1'

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [SampleClass]

