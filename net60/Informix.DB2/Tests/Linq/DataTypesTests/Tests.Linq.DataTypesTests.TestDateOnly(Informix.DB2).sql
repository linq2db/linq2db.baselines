BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DateOnlyTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS DateOnlyTable
(
	ColumnNullable DATETIME YEAR TO DAY     NULL,
	"Column"       DATETIME YEAR TO DAY NOT NULL,
	Id             Int                  NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 Date(16)
SET     @Column_1 = TO_DATE('1900-01-01', '%Y-%m-%d')
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO DateOnlyTable
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
DECLARE @ColumnNullable Date(16)
SET     @ColumnNullable = TO_DATE('2200-01-01', '%Y-%m-%d')
DECLARE @Column_1 Date(16)
SET     @Column_1 = TO_DATE('2020-02-29', '%Y-%m-%d')
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO DateOnlyTable
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
DECLARE @Column_1 Date(16)
SET     @Column_1 = TO_DATE('2020-02-29', '%Y-%m-%d')
DECLARE @ColumnNullable Date(16)
SET     @ColumnNullable = TO_DATE('2200-01-01', '%Y-%m-%d')

SELECT
	r.ColumnNullable,
	r."Column",
	r.Id
FROM
	DateOnlyTable r
WHERE
	r."Column" = @Column_1 AND r.ColumnNullable = @ColumnNullable

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.ColumnNullable,
	r."Column",
	r.Id
FROM
	DateOnlyTable r
WHERE
	r."Column" = TO_DATE('2020-02-29', '%Y-%m-%d') AND
	r.ColumnNullable = TO_DATE('2200-01-01', '%Y-%m-%d')

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	DateOnlyTable

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 Date(16)
SET     @Column_1 = TO_DATE('1900-01-01', '%Y-%m-%d')
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO DateOnlyTable
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
DECLARE @ColumnNullable Date(16)
SET     @ColumnNullable = TO_DATE('2200-01-01', '%Y-%m-%d')
DECLARE @Column_1 Date(16)
SET     @Column_1 = TO_DATE('2020-02-29', '%Y-%m-%d')
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO DateOnlyTable
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
	DateOnlyTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	DateOnlyTable

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 Date(16)
SET     @Column_1 = TO_DATE('1900-01-01', '%Y-%m-%d')
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO DateOnlyTable
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
DECLARE @ColumnNullable Date(16)
SET     @ColumnNullable = TO_DATE('2200-01-01', '%Y-%m-%d')
DECLARE @Column_1 Date(16)
SET     @Column_1 = TO_DATE('2020-02-29', '%Y-%m-%d')
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO DateOnlyTable
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
	DateOnlyTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	DateOnlyTable

BeforeExecute
INSERT BULK DateOnlyTable

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ColumnNullable,
	t1."Column",
	t1.Id
FROM
	DateOnlyTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DateOnlyTable

