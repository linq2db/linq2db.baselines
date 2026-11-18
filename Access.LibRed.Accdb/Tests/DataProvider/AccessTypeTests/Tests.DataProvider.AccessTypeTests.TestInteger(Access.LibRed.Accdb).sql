-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = 0

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = 0 AND [r].[ColumnNullable] IS NULL

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int32
SET     @Column = 0
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = NULL

INSERT INTO [TypeTests]
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = 0

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int32
SET     @Column = 0
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = NULL

INSERT INTO [TypeTests]
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = 0

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int32
SET     @Column = 0
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = NULL

INSERT INTO [TypeTests]
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = 0

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int32
SET     @Column = 0
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = NULL

INSERT INTO [TypeTests]
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = 0

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = -2147483648
DECLARE @nullableValue  -- Int32
SET     @nullableValue = 2147483647

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = -2147483648 AND [r].[ColumnNullable] = 2147483647

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int32
SET     @Column = -2147483648
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = 2147483647

INSERT INTO [TypeTests]
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = -2147483648
DECLARE @nullableValue  -- Int32
SET     @nullableValue = 2147483647

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int32
SET     @Column = -2147483648
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = 2147483647

INSERT INTO [TypeTests]
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = -2147483648
DECLARE @nullableValue  -- Int32
SET     @nullableValue = 2147483647

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int32
SET     @Column = -2147483648
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = 2147483647

INSERT INTO [TypeTests]
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = -2147483648
DECLARE @nullableValue  -- Int32
SET     @nullableValue = 2147483647

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int32
SET     @Column = -2147483648
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = 2147483647

INSERT INTO [TypeTests]
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = -2147483648
DECLARE @nullableValue  -- Int32
SET     @nullableValue = 2147483647

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = 2147483647
DECLARE @nullableValue  -- Int32
SET     @nullableValue = -2147483648

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = 2147483647 AND [r].[ColumnNullable] = -2147483648

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int32
SET     @Column = 2147483647
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = -2147483648

INSERT INTO [TypeTests]
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = 2147483647
DECLARE @nullableValue  -- Int32
SET     @nullableValue = -2147483648

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int32
SET     @Column = 2147483647
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = -2147483648

INSERT INTO [TypeTests]
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = 2147483647
DECLARE @nullableValue  -- Int32
SET     @nullableValue = -2147483648

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int32
SET     @Column = 2147483647
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = -2147483648

INSERT INTO [TypeTests]
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = 2147483647
DECLARE @nullableValue  -- Int32
SET     @nullableValue = -2147483648

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int32
SET     @Column = 2147483647
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = -2147483648

INSERT INTO [TypeTests]
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = 2147483647
DECLARE @nullableValue  -- Int32
SET     @nullableValue = -2147483648

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

