﻿BeforeExecute
-- Access AccessOleDb

CREATE TABLE [test_temp]
(
	[ID]     Int      NOT NULL IDENTITY,
	[Field1] Decimal  NOT NULL,

	CONSTRAINT [PK_test_temp] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access AccessOleDb

SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[test_temp] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- Access AccessOleDb

DELETE FROM [test_temp]

BeforeExecute
-- Access AccessOleDb

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access AccessOleDb

SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[test_temp] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [test_temp]

