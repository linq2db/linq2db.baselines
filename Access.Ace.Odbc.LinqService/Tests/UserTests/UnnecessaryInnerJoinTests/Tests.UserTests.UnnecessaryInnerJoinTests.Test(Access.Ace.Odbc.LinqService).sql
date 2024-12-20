﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Table1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Table1]
(
	[Field1] Int  NOT NULL IDENTITY,
	[Field2] Int  NOT NULL,

	CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED ([Field1])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Table2]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Table2]
(
	[Field2] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_Table2] PRIMARY KEY CLUSTERED ([Field2])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Field2]
FROM
	[Table2] [t1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Table1] [x]
		WHERE
			[t1].[Field2] = [x].[Field2] AND [x].[Field1] IN (1, 2, 3)
	)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Table2]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Table1]

