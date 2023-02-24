BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS BooleanTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS BooleanTable
(
	Id             Int     NOT NULL,
	"Column"       BOOLEAN NOT NULL,
	ColumnNullable BOOLEAN     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column_1 Char(1) -- StringFixedLength
SET     @Column_1 = 't'
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
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Column_1 Char(1) -- StringFixedLength
SET     @Column_1 = 'f'
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
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Column_1 Char(1) -- StringFixedLength
SET     @Column_1 = 'f'
DECLARE @ColumnNullable Char(1) -- StringFixedLength
SET     @ColumnNullable = 't'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	BooleanTable r
WHERE
	r."Column" = @Column_1 AND r.ColumnNullable = @ColumnNullable

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column_1 Char(1) -- StringFixedLength
SET     @Column_1 = 't'
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
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Column_1 Char(1) -- StringFixedLength
SET     @Column_1 = 'f'
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
	BooleanTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	BooleanTable

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column_1 Char(1) -- StringFixedLength
SET     @Column_1 = 't'
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
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Column_1 Char(1) -- StringFixedLength
SET     @Column_1 = 'f'
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
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	BooleanTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS BooleanTable

