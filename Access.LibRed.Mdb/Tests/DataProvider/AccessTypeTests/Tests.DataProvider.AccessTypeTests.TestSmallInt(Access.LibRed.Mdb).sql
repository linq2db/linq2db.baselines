-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int16
SET     @value = 0

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = 0 AND [r].[ColumnNullable] IS NULL

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int16
SET     @Column = 0
DECLARE @ColumnNullable  -- Int16
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int16
SET     @value = 0

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int16
SET     @Column = 0
DECLARE @ColumnNullable  -- Int16
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int16
SET     @value = 0

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int16
SET     @Column = 0
DECLARE @ColumnNullable  -- Int16
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int16
SET     @value = 0

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int16
SET     @Column = 0
DECLARE @ColumnNullable  -- Int16
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int16
SET     @value = 0

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] IS NULL

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int16
SET     @value = -32768
DECLARE @nullableValue  -- Int16
SET     @nullableValue = 32767

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = -32768 AND [r].[ColumnNullable] = 32767

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int16
SET     @Column = -32768
DECLARE @ColumnNullable  -- Int16
SET     @ColumnNullable = 32767

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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int16
SET     @value = -32768
DECLARE @nullableValue  -- Int16
SET     @nullableValue = 32767

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int16
SET     @Column = -32768
DECLARE @ColumnNullable  -- Int16
SET     @ColumnNullable = 32767

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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int16
SET     @value = -32768
DECLARE @nullableValue  -- Int16
SET     @nullableValue = 32767

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int16
SET     @Column = -32768
DECLARE @ColumnNullable  -- Int16
SET     @ColumnNullable = 32767

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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int16
SET     @value = -32768
DECLARE @nullableValue  -- Int16
SET     @nullableValue = 32767

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int16
SET     @Column = -32768
DECLARE @ColumnNullable  -- Int16
SET     @ColumnNullable = 32767

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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int16
SET     @value = -32768
DECLARE @nullableValue  -- Int16
SET     @nullableValue = 32767

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int16
SET     @value = 32767
DECLARE @nullableValue  -- Int16
SET     @nullableValue = -32768

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = 32767 AND [r].[ColumnNullable] = -32768

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int16
SET     @Column = 32767
DECLARE @ColumnNullable  -- Int16
SET     @ColumnNullable = -32768

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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int16
SET     @value = 32767
DECLARE @nullableValue  -- Int16
SET     @nullableValue = -32768

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int16
SET     @Column = 32767
DECLARE @ColumnNullable  -- Int16
SET     @ColumnNullable = -32768

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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int16
SET     @value = 32767
DECLARE @nullableValue  -- Int16
SET     @nullableValue = -32768

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int16
SET     @Column = 32767
DECLARE @ColumnNullable  -- Int16
SET     @ColumnNullable = -32768

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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int16
SET     @value = 32767
DECLARE @nullableValue  -- Int16
SET     @nullableValue = -32768

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int16
SET     @Column = 32767
DECLARE @ColumnNullable  -- Int16
SET     @ColumnNullable = -32768

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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int16
SET     @value = 32767
DECLARE @nullableValue  -- Int16
SET     @nullableValue = -32768

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

