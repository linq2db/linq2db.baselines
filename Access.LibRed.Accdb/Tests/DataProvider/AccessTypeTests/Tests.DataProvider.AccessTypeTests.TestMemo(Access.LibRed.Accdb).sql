-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value NVarChar(5) -- String
SET     @value = 'value'
DECLARE @nullableValue NVarChar(5) -- String
SET     @nullableValue = 'other'

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
	[r].[Column] = 'value' AND [r].[ColumnNullable] = 'other'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column NVarChar(5) -- String
SET     @Column = 'value'
DECLARE @ColumnNullable NVarChar(5) -- String
SET     @ColumnNullable = 'other'

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
DECLARE @value NVarChar(5) -- String
SET     @value = 'value'
DECLARE @nullableValue NVarChar(5) -- String
SET     @nullableValue = 'other'

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
DECLARE @Column NVarChar(5) -- String
SET     @Column = 'value'
DECLARE @ColumnNullable NVarChar(5) -- String
SET     @ColumnNullable = 'other'

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
DECLARE @value NVarChar(5) -- String
SET     @value = 'value'
DECLARE @nullableValue NVarChar(5) -- String
SET     @nullableValue = 'other'

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
DECLARE @Column NVarChar(5) -- String
SET     @Column = 'value'
DECLARE @ColumnNullable NVarChar(5) -- String
SET     @ColumnNullable = 'other'

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
DECLARE @value NVarChar(5) -- String
SET     @value = 'value'
DECLARE @nullableValue NVarChar(5) -- String
SET     @nullableValue = 'other'

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
DECLARE @Column NVarChar(5) -- String
SET     @Column = 'value'
DECLARE @ColumnNullable NVarChar(5) -- String
SET     @ColumnNullable = 'other'

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
DECLARE @value NVarChar(5) -- String
SET     @value = 'value'
DECLARE @nullableValue NVarChar(5) -- String
SET     @nullableValue = 'other'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

