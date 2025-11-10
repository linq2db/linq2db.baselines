-- SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025 SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column NVarChar(4000) -- String
SET     @Column = N'{ }'
DECLARE @ColumnNullable NVarChar(4000) -- String
SET     @ColumnNullable = NULL

INSERT INTO [TypeTable`2]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025 SqlServer.2022
DECLARE @p1 Int -- Int32
SET     @p1 = 1
DECLARE @p2 NVarChar(4000) -- String
SET     @p2 = N'{ }'
DECLARE @p3 NVarChar(4000) -- String
SET     @p3 = NULL

INSERT INTO [TypeTable`2]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(@p1,@p2,@p3)

-- SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT BULK [TypeTable`2](Id, Column, ColumnNullable)

-- SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT ASYNC BULK [TypeTable`2](Id, Column, ColumnNullable)

-- SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025 SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column NVarChar(4000) -- String
SET     @Column = N'{ "prop1": 123 }'
DECLARE @ColumnNullable NVarChar(4000) -- String
SET     @ColumnNullable = N'{ "prop1": 321 }'

INSERT INTO [TypeTable`2]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025 SqlServer.2022
DECLARE @p1 Int -- Int32
SET     @p1 = 1
DECLARE @p2 NVarChar(4000) -- String
SET     @p2 = N'{ "prop1": 123 }'
DECLARE @p3 NVarChar(4000) -- String
SET     @p3 = N'{ "prop1": 321 }'

INSERT INTO [TypeTable`2]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(@p1,@p2,@p3)

-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT BULK [TypeTable`2](Id, Column, ColumnNullable)

-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT ASYNC BULK [TypeTable`2](Id, Column, ColumnNullable)

-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

