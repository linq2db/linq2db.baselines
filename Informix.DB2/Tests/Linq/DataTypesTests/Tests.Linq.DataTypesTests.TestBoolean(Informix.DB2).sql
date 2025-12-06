-- Informix.DB2 Informix
DECLARE @Column Char(1) -- StringFixedLength
SET     @Column = 'f'
DECLARE @ColumnNullable Char(1) -- StringFixedLength
SET     @ColumnNullable = 't'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	BooleanTable r
WHERE
	r."Column" = @Column AND r.ColumnNullable = @ColumnNullable

-- Informix.DB2 Informix

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	BooleanTable r
WHERE
	r."Column" = 'f'::BOOLEAN AND r.ColumnNullable = 't'::BOOLEAN

-- Informix.DB2 Informix

DELETE FROM
	BooleanTable

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column Char(1) -- StringFixedLength
SET     @Column = 't'
DECLARE @ColumnNullable SmallInt -- Boolean
SET     @ColumnNullable = NULL

INSERT INTO BooleanTable
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Column Char(1) -- StringFixedLength
SET     @Column = 'f'
DECLARE @ColumnNullable Char(1) -- StringFixedLength
SET     @ColumnNullable = 't'

INSERT INTO BooleanTable
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

-- Informix.DB2 Informix

DELETE FROM
	BooleanTable

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column Char(1) -- StringFixedLength
SET     @Column = 't'
DECLARE @ColumnNullable SmallInt -- Boolean
SET     @ColumnNullable = NULL

INSERT INTO BooleanTable
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Column Char(1) -- StringFixedLength
SET     @Column = 'f'
DECLARE @ColumnNullable Char(1) -- StringFixedLength
SET     @ColumnNullable = 't'

INSERT INTO BooleanTable
(
	Id,
	"Column",
	ColumnNullable
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

-- Informix.DB2 Informix

DELETE FROM
	BooleanTable

INSERT BULK BooleanTable

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

