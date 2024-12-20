﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestConstantsData]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [TestConstantsData]
(
	[Id]                Int           NOT NULL,
	[GuidValue]         Guid          NOT NULL,
	[GuidNullableValue] Guid              NULL,
	[StringValue]       NVarChar(255)     NULL,

	CONSTRAINT [PK_TestConstantsData] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'
DECLARE @GuidNullableValue UniqueIdentifier -- Guid
SET     @GuidNullableValue = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'
DECLARE @StringValue NVarChar(8) -- String
SET     @StringValue = 'StrValue'

INSERT INTO [TestConstantsData]
(
	[Id],
	[GuidValue],
	[GuidNullableValue],
	[StringValue]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	[e].[StringValue] + '1' = 'StrValue1'

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestConstantsData]

