BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS IntEnumTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS IntEnumTable
(
	ColumnNullable Int     NULL,
	"Column"       Int NOT NULL,
	Id             Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Integer(4) -- Int32
SET     @Column_1 = 1
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO IntEnumTable
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
DECLARE @ColumnNullable Integer(4) -- Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Integer(4) -- Int32
SET     @Column_1 = 2
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO IntEnumTable
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
DECLARE @Column_1 Integer(4) -- Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Integer(4) -- Int32
SET     @ColumnNullable = 3

SELECT
	r.ColumnNullable,
	r."Column",
	r.Id
FROM
	IntEnumTable r
WHERE
	r."Column" = @Column_1 AND r.ColumnNullable = @ColumnNullable

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.ColumnNullable,
	r."Column",
	r.Id
FROM
	IntEnumTable r
WHERE
	r."Column" = 2 AND r.ColumnNullable = 3

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	IntEnumTable

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Integer(4) -- Int32
SET     @Column_1 = 1
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO IntEnumTable
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
DECLARE @ColumnNullable Integer(4) -- Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Integer(4) -- Int32
SET     @Column_1 = 2
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO IntEnumTable
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
	IntEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	IntEnumTable

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Integer(4) -- Int32
SET     @Column_1 = 1
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO IntEnumTable
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
DECLARE @ColumnNullable Integer(4) -- Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Integer(4) -- Int32
SET     @Column_1 = 2
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO IntEnumTable
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
	IntEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	IntEnumTable

BeforeExecute
INSERT BULK IntEnumTable

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ColumnNullable,
	t1."Column",
	t1.Id
FROM
	IntEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS IntEnumTable

