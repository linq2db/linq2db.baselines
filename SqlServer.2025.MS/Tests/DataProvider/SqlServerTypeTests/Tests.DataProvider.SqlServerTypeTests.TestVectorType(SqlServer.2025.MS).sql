-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column 36(16) -- Binary
SET     @Column = JSON_ARRAY(1.2, -1.1)
DECLARE @ColumnNullable NVarChar -- String
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

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @p1 Int -- Int32
SET     @p1 = 1
DECLARE @p2 36(16) -- Binary
SET     @p2 = JSON_ARRAY(1.2, -1.1)
DECLARE @p3 NVarChar -- String
SET     @p3 = NULL

INSERT INTO [TypeTable`2]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(@p1,@p2,@p3)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT BULK [TypeTable`2](Id, Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT ASYNC BULK [TypeTable`2](Id, Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column 36(16) -- Binary
SET     @Column = JSON_ARRAY(5.2, -3.1)
DECLARE @ColumnNullable NVarChar -- String
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

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @p1 Int -- Int32
SET     @p1 = 1
DECLARE @p2 36(16) -- Binary
SET     @p2 = JSON_ARRAY(5.2, -3.1)
DECLARE @p3 NVarChar -- String
SET     @p3 = NULL

INSERT INTO [TypeTable`2]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(@p1,@p2,@p3)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT BULK [TypeTable`2](Id, Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT ASYNC BULK [TypeTable`2](Id, Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column 36(16) -- Binary
SET     @Column = JSON_ARRAY(11.2, -4.1)
DECLARE @ColumnNullable Vector(16) -- Binary
SET     @ColumnNullable = JSON_ARRAY(5.2, -3.1)

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

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @p1 Int -- Int32
SET     @p1 = 1
DECLARE @p2 36(16) -- Binary
SET     @p2 = JSON_ARRAY(11.2, -4.1)
DECLARE @p3 36(16) -- Binary
SET     @p3 = JSON_ARRAY(5.2, -3.1)

INSERT INTO [TypeTable`2]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(@p1,@p2,@p3)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT BULK [TypeTable`2](Id, Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT ASYNC BULK [TypeTable`2](Id, Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

