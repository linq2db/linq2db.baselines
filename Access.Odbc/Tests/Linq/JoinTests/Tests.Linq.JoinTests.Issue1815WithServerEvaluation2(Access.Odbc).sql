BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [StLink]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [StLink]
(
	[InId]          Int   NOT NULL,
	[InMaxQuantity] Float     NULL,
	[InMinQuantity] Float     NULL,

	CONSTRAINT [PK_StLink] PRIMARY KEY CLUSTERED ([InId])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @InId Int -- Int32
SET     @InId = 1
DECLARE @InMaxQuantity Double
SET     @InMaxQuantity = 2
DECLARE @InMinQuantity Double
SET     @InMinQuantity = 1

INSERT INTO [StLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @InId Int -- Int32
SET     @InId = 2
DECLARE @InMaxQuantity Double
SET     @InMaxQuantity = NULL
DECLARE @InMinQuantity Double
SET     @InMinQuantity = NULL

INSERT INTO [StLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [EdtLink]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [EdtLink]
(
	[InId]          Int   NOT NULL,
	[InMaxQuantity] Float     NULL,
	[InMinQuantity] Float     NULL,

	CONSTRAINT [PK_EdtLink] PRIMARY KEY CLUSTERED ([InId])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @InId Int -- Int32
SET     @InId = 2
DECLARE @InMaxQuantity Double
SET     @InMaxQuantity = 4
DECLARE @InMinQuantity Double
SET     @InMinQuantity = 3

INSERT INTO [EdtLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[t1].[InId],
	IIF([e].[InId] IS NULL, [t1].[InMinQuantity], [e].[InMinQuantity]),
	IIF([e].[InId] IS NULL, [t1].[InMaxQuantity], [e].[InMaxQuantity])
FROM
	[StLink] [t1]
		LEFT JOIN [EdtLink] [e] ON ([t1].[InId] = [e].[InId])
WHERE
	[t1].[InId] = 1

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[t1].[InId],
	IIF([e].[InId] IS NULL, [t1].[InMinQuantity], [e].[InMinQuantity]),
	IIF([e].[InId] IS NULL, [t1].[InMaxQuantity], [e].[InMaxQuantity])
FROM
	[StLink] [t1]
		LEFT JOIN [EdtLink] [e] ON ([t1].[InId] = [e].[InId])
WHERE
	[t1].[InId] = 2

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [EdtLink]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [StLink]

