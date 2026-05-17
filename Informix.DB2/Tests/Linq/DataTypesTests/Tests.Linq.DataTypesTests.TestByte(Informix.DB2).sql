-- Informix.DB2 Informix
DECLARE @Column SmallInt(2) -- Int16
SET     @Column = 255
DECLARE @ColumnNullable SmallInt(2) -- Int16
SET     @ColumnNullable = 2

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	ByteTable r
WHERE
	r."Column" = @Column AND r.ColumnNullable = @ColumnNullable

-- Informix.DB2 Informix

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	ByteTable r
WHERE
	r."Column" = 255 AND r.ColumnNullable = 2

-- Informix.DB2 Informix

DELETE FROM
	ByteTable

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column SmallInt(2) -- Int16
SET     @Column = 1
DECLARE @ColumnNullable SmallInt -- Int16
SET     @ColumnNullable = NULL

INSERT INTO ByteTable
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
DECLARE @Column SmallInt(2) -- Int16
SET     @Column = 255
DECLARE @ColumnNullable SmallInt(2) -- Int16
SET     @ColumnNullable = 2

INSERT INTO ByteTable
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
	ByteTable t1
ORDER BY
	t1.Id

-- Informix.DB2 Informix

DELETE FROM
	ByteTable

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column SmallInt(2) -- Int16
SET     @Column = 1
DECLARE @ColumnNullable SmallInt -- Int16
SET     @ColumnNullable = NULL

INSERT INTO ByteTable
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
DECLARE @Column SmallInt(2) -- Int16
SET     @Column = 255
DECLARE @ColumnNullable SmallInt(2) -- Int16
SET     @ColumnNullable = 2

INSERT INTO ByteTable
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
	ByteTable t1
ORDER BY
	t1.Id

-- Informix.DB2 Informix

DELETE FROM
	ByteTable

INSERT BULK ByteTable

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	ByteTable t1
ORDER BY
	t1.Id

