﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [aa]
(
	[bb] Int           NOT NULL,
	[cc] NVarChar(255)     NULL,

	CONSTRAINT [PK_aa] PRIMARY KEY CLUSTERED ([bb])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @bb Int -- Int32
SET     @bb = 99
DECLARE @cc NVarChar(5) -- String
SET     @cc = 'hallo'

INSERT INTO [aa]
(
	[bb],
	[cc]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[bb],
	[t1].[cc]
FROM
	[aa] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [aa]

