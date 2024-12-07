BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [ComplexPredicate]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[ComplexPredicate]', N'U') IS NULL)
	CREATE TABLE [ComplexPredicate]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(4000) -- String
SET     @Value = NULL

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'other'

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'123'

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'test'

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'1'

INSERT INTO [ComplexPredicate]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[ComplexPredicate] [r]
WHERE
	IIF([r].[Value] = N'123', 1, 0) = IIF([r].[Value] = N'1' OR [r].[Value] = N'test' AND ([r].[Value] <> N'1' OR [r].[Value] IS NULL), 1, 0)
ORDER BY
	[r].[Id]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ComplexPredicate] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [ComplexPredicate]

