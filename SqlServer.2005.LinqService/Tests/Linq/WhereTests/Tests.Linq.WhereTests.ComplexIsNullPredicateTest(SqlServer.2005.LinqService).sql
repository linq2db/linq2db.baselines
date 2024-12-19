BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ComplexPredicate]', N'U') IS NOT NULL)
	DROP TABLE [ComplexPredicate]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ComplexPredicate]', N'U') IS NULL)
	CREATE TABLE [ComplexPredicate]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[ComplexPredicate] [r]
WHERE
	CASE
		WHEN [r].[Value] = N'123' THEN 1
		ELSE 0
	END = CASE
		WHEN [r].[Value] = N'1' OR [r].[Value] = N'test' AND ([r].[Value] <> N'1' OR [r].[Value] IS NULL)
			THEN 1
		ELSE 0
	END
ORDER BY
	[r].[Id]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ComplexPredicate] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ComplexPredicate]', N'U') IS NOT NULL)
	DROP TABLE [ComplexPredicate]

