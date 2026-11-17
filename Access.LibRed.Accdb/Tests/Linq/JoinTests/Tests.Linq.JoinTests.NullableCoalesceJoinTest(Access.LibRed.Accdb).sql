-- Access.LibRed.Accdb Access.LibRed AccessLibRed
CREATE TABLE [tmptbl1]
(
	[ID]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_tmptbl1] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Value NVarChar(6) -- String
SET     @Value = 'Value1'

INSERT INTO [tmptbl1]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 2
DECLARE @Value NVarChar -- String
SET     @Value = NULL

INSERT INTO [tmptbl1]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
CREATE TABLE [tmptbl2]
(
	[ID]    Int           NOT NULL,
	[Value] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_tmptbl2] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Value NVarChar(6) -- String
SET     @Value = 'Value1'

INSERT INTO [tmptbl2]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @Value NVarChar(6) -- String
SET     @Value = 'Value2'

INSERT INTO [tmptbl2]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
CREATE TABLE [tmptbl3]
(
	[ID]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_tmptbl3] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Value NVarChar(6) -- String
SET     @Value = 'Value1'

INSERT INTO [tmptbl3]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 2
DECLARE @Value NVarChar -- String
SET     @Value = NULL

INSERT INTO [tmptbl3]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t4].[ID],
	[t4].[Value]
FROM
	([tmptbl1] [t2]
		LEFT JOIN [tmptbl2] [t3] ON ([t2].[ID] = [t3].[ID]))
		LEFT JOIN [tmptbl3] [t4] ON (CASE
			WHEN [t3].[Value] IS NULL THEN [t2].[Value]
			ELSE [t3].[Value]
		END = [t4].[Value] OR CASE
			WHEN [t3].[Value] IS NULL THEN [t2].[Value]
			ELSE [t3].[Value]
		END IS NULL AND [t4].[Value] IS NULL)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[tmptbl1] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[tmptbl2] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[tmptbl3] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [tmptbl3]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [tmptbl2]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [tmptbl1]

