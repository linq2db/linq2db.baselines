BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS BooleanTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS BooleanTable
(
	ColumnNullable BOOLEAN     NULL,
	"Column"       BOOLEAN NOT NULL,
	Id             Int     NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ColumnNullable SmallInt -- Boolean
SET     @ColumnNullable = NULL
DECLARE @Column_1 Char(1) -- StringFixedLength
SET     @Column_1 = 't'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO BooleanTable
(
	ColumnNullable,
	"Column",
	Id
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ColumnNullable Char(1) -- StringFixedLength
SET     @ColumnNullable = 't'
DECLARE @Column_1 Char(1) -- StringFixedLength
SET     @Column_1 = 'f'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO BooleanTable
(
	ColumnNullable,
	"Column",
	Id
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Column_1 Char(1) -- StringFixedLength
SET     @Column_1 = 'f'
DECLARE @ColumnNullable Char(1) -- StringFixedLength
SET     @ColumnNullable = 't'

SELECT
	r.ColumnNullable,
	r."Column",
	r.Id
FROM
	BooleanTable r
WHERE
	r."Column" = @Column_1 AND r.ColumnNullable = @ColumnNullable

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.ColumnNullable,
	r."Column",
	r.Id
FROM
	BooleanTable r
WHERE
	r."Column" = 'f' AND r.ColumnNullable = 't'

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	BooleanTable

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ColumnNullable SmallInt -- Boolean
SET     @ColumnNullable = NULL
DECLARE @Column_1 Char(1) -- StringFixedLength
SET     @Column_1 = 't'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO BooleanTable
(
	ColumnNullable,
	"Column",
	Id
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ColumnNullable Char(1) -- StringFixedLength
SET     @ColumnNullable = 't'
DECLARE @Column_1 Char(1) -- StringFixedLength
SET     @Column_1 = 'f'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO BooleanTable
(
	ColumnNullable,
	"Column",
	Id
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ColumnNullable,
	t1."Column",
	t1.Id
FROM
	BooleanTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	BooleanTable

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ColumnNullable SmallInt -- Boolean
SET     @ColumnNullable = NULL
DECLARE @Column_1 Char(1) -- StringFixedLength
SET     @Column_1 = 't'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO BooleanTable
(
	ColumnNullable,
	"Column",
	Id
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ColumnNullable Char(1) -- StringFixedLength
SET     @ColumnNullable = 't'
DECLARE @Column_1 Char(1) -- StringFixedLength
SET     @Column_1 = 'f'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO BooleanTable
(
	ColumnNullable,
	"Column",
	Id
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ColumnNullable,
	t1."Column",
	t1.Id
FROM
	BooleanTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	BooleanTable

BeforeExecute
INSERT BULK BooleanTable

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ColumnNullable,
	t1."Column",
	t1.Id
FROM
	BooleanTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS BooleanTable

