﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue1554Table]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue1554Table]
(
	[Id]              Int         NOT NULL,
	[ClaimedKeyType]  NVarChar(3) NOT NULL,
	[ClaimedKeyTypeN] NVarChar(3)     NULL,

	CONSTRAINT [PK_Issue1554Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @ClaimedKeyType NVarChar(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN NVarChar(2) -- String
SET     @ClaimedKeyTypeN = 'EC'

INSERT INTO [Issue1554Table]
(
	[Id],
	[ClaimedKeyType],
	[ClaimedKeyTypeN]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[ClaimedKeyType],
	[t1].[ClaimedKeyTypeN]
FROM
	[Issue1554Table] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue1554Table]

