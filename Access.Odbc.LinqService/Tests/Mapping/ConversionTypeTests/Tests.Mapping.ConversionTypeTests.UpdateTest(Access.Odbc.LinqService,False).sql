﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TrimTestTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [TrimTestTable]
(
	[ID]   Int          NOT NULL,
	[Data] NVarChar(50)     NULL,

	CONSTRAINT [PK_TrimTestTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***XXX***'

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***HHH***'

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***VVV***'

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***III***'
DECLARE @ID Int -- Int32
SET     @ID = 3

UPDATE
	[TrimTestTable] [t1]
SET
	[t1].[Data] = ?
WHERE
	[t1].[ID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***OOO***'

UPDATE
	[TrimTestTable] [t]
SET
	[t].[Data] = ?
WHERE
	([t].[Data] = '***XXX***')

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***SSS***'
DECLARE @p NVarChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	[TrimTestTable] [t]
SET
	[t].[Data] = ?
WHERE
	([t].[Data] = ?)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TrimTestTable]

