BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ComplexPredicate') IS NOT NULL)
	DROP TABLE [ComplexPredicate]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ComplexPredicate') IS NULL)
	EXECUTE('
		CREATE TABLE [ComplexPredicate]
		(
			[Id]    Int           NOT NULL,
			[Value] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value UniVarChar -- String
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value UniVarChar(5) -- String
SET     @Value = 'other'

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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value UniVarChar(3) -- String
SET     @Value = '123'

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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value UniVarChar(4) -- String
SET     @Value = 'test'

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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value UniVarChar(1) -- String
SET     @Value = '1'

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
-- Sybase.Managed Sybase

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[ComplexPredicate] [r]
WHERE
	CASE
		WHEN [r].[Value] = '123' THEN 1
		ELSE 0
	END = CASE
		WHEN [r].[Value] = '1' OR [r].[Value] = 'test' AND ([r].[Value] <> '1' OR [r].[Value] IS NULL)
			THEN 1
		ELSE 0
	END
ORDER BY
	[r].[Id]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ComplexPredicate] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ComplexPredicate') IS NOT NULL)
	DROP TABLE [ComplexPredicate]

