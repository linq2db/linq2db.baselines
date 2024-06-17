BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table1788') IS NOT NULL)
	DROP TABLE [Table1788]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table1788') IS NULL)
	EXECUTE('
		CREATE TABLE [Table1788]
		(
			[Id]     Int NOT NULL,
			[Value1] Int NOT NULL,

			CONSTRAINT [PK_Table1788] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 11

INSERT INTO [Table1788]
(
	[Id],
	[Value1]
)
VALUES
(
	@Id,
	@Value1
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 22

INSERT INTO [Table1788]
(
	[Id],
	[Value1]
)
VALUES
(
	@Id,
	@Value1
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 33

INSERT INTO [Table1788]
(
	[Id],
	[Value1]
)
VALUES
(
	@Id,
	@Value1
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value1]
FROM
	[Table1788] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Bit -- Boolean
SET     @p = 0

SELECT
	CASE
		WHEN [l_1].[Id] IS NOT NULL THEN [l_1].[HasValue]
		ELSE @p
	END,
	[l_1].[Value1]
FROM
	[Table1788] [p]
		LEFT JOIN (
			SELECT
				CASE
					WHEN [l].[Value1] IS NOT NULL THEN CASE
						WHEN [l].[Value1] IS NOT NULL THEN 1
						ELSE 0
					END
					ELSE 0
				END as [HasValue],
				[l].[Id],
				[l].[Value1]
			FROM
				[Table1788] [l]
		) [l_1] ON [l_1].[Id] = [p].[Id] + 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table1788') IS NOT NULL)
	DROP TABLE [Table1788]

