﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [SomeTable]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [SomeTable]
(
	[ClassProp] Bit NOT NULL,
	[Interface] Bit NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [SomeTable]
(
	[ClassProp],
	[Interface]
)
VALUES
(
	True,
	False
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[ClassProp],
	[t1].[Interface]
FROM
	[SomeTable] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [SomeTable]

