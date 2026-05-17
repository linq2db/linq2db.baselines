-- SqlServer.2025

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [TypeTable`2]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	CAST('[1.2, -1.1]' AS VECTOR(2, float32)),
	NULL
)

-- SqlServer.2025

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025
DECLARE @p1 Int -- Int32
SET     @p1 = 1

INSERT INTO [TypeTable`2]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(@p1,CAST('[1.2, -1.1]' AS VECTOR(2, float32)),NULL)

-- SqlServer.2025

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT BULK [TypeTable`2](Id, Column, ColumnNullable)

-- SqlServer.2025

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT ASYNC BULK [TypeTable`2](Id, Column, ColumnNullable)

-- SqlServer.2025

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [TypeTable`2]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	CAST('[5.2, -3.1]' AS VECTOR(2, float32)),
	NULL
)

-- SqlServer.2025

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025
DECLARE @p1 Int -- Int32
SET     @p1 = 1

INSERT INTO [TypeTable`2]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(@p1,CAST('[5.2, -3.1]' AS VECTOR(2, float32)),NULL)

-- SqlServer.2025

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT BULK [TypeTable`2](Id, Column, ColumnNullable)

-- SqlServer.2025

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT ASYNC BULK [TypeTable`2](Id, Column, ColumnNullable)

-- SqlServer.2025

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [TypeTable`2]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	CAST('[11.2, -4.1]' AS VECTOR(2, float32)),
	CAST('[5.2, -3.1]' AS VECTOR(2, float32))
)

-- SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025
DECLARE @p1 Int -- Int32
SET     @p1 = 1

INSERT INTO [TypeTable`2]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(@p1,CAST('[11.2, -4.1]' AS VECTOR(2, float32)),CAST('[5.2, -3.1]' AS VECTOR(2, float32)))

-- SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT BULK [TypeTable`2](Id, Column, ColumnNullable)

-- SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT ASYNC BULK [TypeTable`2](Id, Column, ColumnNullable)

-- SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

