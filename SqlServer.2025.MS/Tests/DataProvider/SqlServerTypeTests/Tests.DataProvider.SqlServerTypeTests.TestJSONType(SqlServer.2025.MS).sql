-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
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
DECLARE @Column Json(3) -- String
SET     @Column = N'{ }'
DECLARE @ColumnNullable Json -- String
SET     @ColumnNullable = NULL

INSERT INTO [TypeTable`2]
(
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Column,
	@ColumnNullable
)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
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
DECLARE @p1 Json(3) -- String
SET     @p1 = N'{ }'
DECLARE @p2 Json -- String
SET     @p2 = NULL

INSERT INTO [TypeTable`2]
(
	[Column],
	[ColumnNullable]
)
VALUES
(@p1,@p2)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
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

INSERT BULK [TypeTable`2](Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
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

INSERT ASYNC BULK [TypeTable`2](Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Column Json(16) -- String
SET     @Column = N'{ "prop1": 123 }'
DECLARE @ColumnNullable Json(16) -- String
SET     @ColumnNullable = N'{ "prop1": 321 }'

INSERT INTO [TypeTable`2]
(
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Column,
	@ColumnNullable
)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @p1 Json(16) -- String
SET     @p1 = N'{ "prop1": 123 }'
DECLARE @p2 Json(16) -- String
SET     @p2 = N'{ "prop1": 321 }'

INSERT INTO [TypeTable`2]
(
	[Column],
	[ColumnNullable]
)
VALUES
(@p1,@p2)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT BULK [TypeTable`2](Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT ASYNC BULK [TypeTable`2](Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
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
DECLARE @Column Json(3) -- String
SET     @Column = N'{ }'
DECLARE @ColumnNullable Json -- String
SET     @ColumnNullable = NULL

INSERT INTO [TypeTable`2]
(
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Column,
	@ColumnNullable
)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
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
DECLARE @p1 Json(3) -- String
SET     @p1 = N'{ }'
DECLARE @p2 Json -- String
SET     @p2 = NULL

INSERT INTO [TypeTable`2]
(
	[Column],
	[ColumnNullable]
)
VALUES
(@p1,@p2)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
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

INSERT BULK [TypeTable`2](Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
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

INSERT ASYNC BULK [TypeTable`2](Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Column Json(16) -- String
SET     @Column = N'{ "prop1": 123 }'
DECLARE @ColumnNullable Json(16) -- String
SET     @ColumnNullable = N'{ "prop1": 321 }'

INSERT INTO [TypeTable`2]
(
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Column,
	@ColumnNullable
)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @p1 Json(16) -- String
SET     @p1 = N'{ "prop1": 123 }'
DECLARE @p2 Json(16) -- String
SET     @p2 = N'{ "prop1": 321 }'

INSERT INTO [TypeTable`2]
(
	[Column],
	[ColumnNullable]
)
VALUES
(@p1,@p2)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT BULK [TypeTable`2](Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT ASYNC BULK [TypeTable`2](Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
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
DECLARE @Column Json -- String
SET     @Column = N'{ }'
DECLARE @ColumnNullable Json -- String
SET     @ColumnNullable = NULL

INSERT INTO [TypeTable`2]
(
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Column,
	@ColumnNullable
)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
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
DECLARE @p1 Json -- String
SET     @p1 = N'{ }'
DECLARE @p2 Json -- String
SET     @p2 = NULL

INSERT INTO [TypeTable`2]
(
	[Column],
	[ColumnNullable]
)
VALUES
(@p1,@p2)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
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

INSERT BULK [TypeTable`2](Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
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

INSERT ASYNC BULK [TypeTable`2](Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTable`2] [r]
WHERE
	[r].[ColumnNullable] IS NULL

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Column Json -- String
SET     @Column = N'{ }'
DECLARE @ColumnNullable Json -- String
SET     @ColumnNullable = NULL

INSERT INTO [TypeTable`2]
(
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Column,
	@ColumnNullable
)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @p1 Json -- String
SET     @p1 = N'{ }'
DECLARE @p2 Json -- String
SET     @p2 = NULL

INSERT INTO [TypeTable`2]
(
	[Column],
	[ColumnNullable]
)
VALUES
(@p1,@p2)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT BULK [TypeTable`2](Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT ASYNC BULK [TypeTable`2](Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Column Json -- String
SET     @Column = N'{ "prop1": 123 }'
DECLARE @ColumnNullable Json -- String
SET     @ColumnNullable = N'{ "prop1": 321 }'

INSERT INTO [TypeTable`2]
(
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Column,
	@ColumnNullable
)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @p1 Json -- String
SET     @p1 = N'{ "prop1": 123 }'
DECLARE @p2 Json -- String
SET     @p2 = N'{ "prop1": 321 }'

INSERT INTO [TypeTable`2]
(
	[Column],
	[ColumnNullable]
)
VALUES
(@p1,@p2)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT BULK [TypeTable`2](Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[TypeTable`2] [t1]

INSERT ASYNC BULK [TypeTable`2](Column, ColumnNullable)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[TypeTable`2] [t1]

