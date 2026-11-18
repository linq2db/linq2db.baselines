-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value NVarChar(8) -- String
SET     @value = 'значение'
DECLARE @nullableValue NVarChar(6) -- String
SET     @nullableValue = 'другое'

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
	[r].[Column] = 'значение' AND [r].[ColumnNullable] = 'другое'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[TypeTests] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column NVarChar(8) -- String
SET     @Column = 'значение'
DECLARE @ColumnNullable NVarChar(6) -- String
SET     @ColumnNullable = 'другое'

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
DECLARE @value NVarChar(8) -- String
SET     @value = 'значение'
DECLARE @nullableValue NVarChar(6) -- String
SET     @nullableValue = 'другое'

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
DECLARE @Column NVarChar(8) -- String
SET     @Column = 'значение'
DECLARE @ColumnNullable NVarChar(6) -- String
SET     @ColumnNullable = 'другое'

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
DECLARE @value NVarChar(8) -- String
SET     @value = 'значение'
DECLARE @nullableValue NVarChar(6) -- String
SET     @nullableValue = 'другое'

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
DECLARE @Column NVarChar(8) -- String
SET     @Column = 'значение'
DECLARE @ColumnNullable NVarChar(6) -- String
SET     @ColumnNullable = 'другое'

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
DECLARE @value NVarChar(8) -- String
SET     @value = 'значение'
DECLARE @nullableValue NVarChar(6) -- String
SET     @nullableValue = 'другое'

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
DECLARE @Column NVarChar(8) -- String
SET     @Column = 'значение'
DECLARE @ColumnNullable NVarChar(6) -- String
SET     @ColumnNullable = 'другое'

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
DECLARE @value NVarChar(8) -- String
SET     @value = 'значение'
DECLARE @nullableValue NVarChar(6) -- String
SET     @nullableValue = 'другое'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[TypeTests] [r]
WHERE
	[r].[Column] = @value AND [r].[ColumnNullable] = @nullableValue

