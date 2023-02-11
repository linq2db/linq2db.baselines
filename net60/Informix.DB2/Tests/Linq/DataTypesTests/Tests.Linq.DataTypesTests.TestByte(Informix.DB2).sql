BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ByteTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS ByteTable
(
	Id             Int      NOT NULL,
	"Column"       SmallInt NOT NULL,
	ColumnNullable SmallInt     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column_1 SmallInt(2) -- Int16
SET     @Column_1 = 1
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
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Column_1 SmallInt(2) -- Int16
SET     @Column_1 = 255
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
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Column_1 SmallInt(2) -- Int16
SET     @Column_1 = 255
DECLARE @ColumnNullable SmallInt(2) -- Int16
SET     @ColumnNullable = 2

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	ByteTable r
WHERE
	r."Column" = @Column_1 AND r.ColumnNullable = @ColumnNullable

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	ByteTable r
WHERE
	r."Column" = 255 AND r.ColumnNullable = 2

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	ByteTable

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column_1 SmallInt(2) -- Int16
SET     @Column_1 = 1
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
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Column_1 SmallInt(2) -- Int16
SET     @Column_1 = 255
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
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	ByteTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	ByteTable

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column_1 SmallInt(2) -- Int16
SET     @Column_1 = 1
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
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Column_1 SmallInt(2) -- Int16
SET     @Column_1 = 255
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
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	ByteTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	ByteTable

BeforeExecute
INSERT BULK ByteTable

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	ByteTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ByteTable

