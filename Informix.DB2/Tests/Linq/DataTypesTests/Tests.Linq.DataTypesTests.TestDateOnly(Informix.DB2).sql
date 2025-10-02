BeforeExecute
-- Informix.DB2 Informix
DECLARE @Column Date(16)
SET     @Column = TO_DATE('2020-02-29', '%Y-%m-%d')
DECLARE @ColumnNullable Date(16)
SET     @ColumnNullable = TO_DATE('2020-01-01', '%Y-%m-%d')

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	DateOnlyTable r
WHERE
	r."Column" = @Column AND r.ColumnNullable = @ColumnNullable

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	DateOnlyTable r
WHERE
	r."Column" = TO_DATE('2020-02-29', '%Y-%m-%d') AND
	r.ColumnNullable = TO_DATE('2020-01-01', '%Y-%m-%d')

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	DateOnlyTable

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column Date(16)
SET     @Column = TO_DATE('1980-01-01', '%Y-%m-%d')
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL

INSERT INTO DateOnlyTable
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

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Column Date(16)
SET     @Column = TO_DATE('2020-02-29', '%Y-%m-%d')
DECLARE @ColumnNullable Date(16)
SET     @ColumnNullable = TO_DATE('2020-01-01', '%Y-%m-%d')

INSERT INTO DateOnlyTable
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

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column Date(16)
SET     @Column = TO_DATE('1980-01-01', '%Y-%m-%d')
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL

INSERT INTO DateOnlyTable
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

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Column Date(16)
SET     @Column = TO_DATE('2020-02-29', '%Y-%m-%d')
DECLARE @ColumnNullable Date(16)
SET     @ColumnNullable = TO_DATE('2020-01-01', '%Y-%m-%d')

INSERT INTO DateOnlyTable
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

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
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
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	DateOnlyTable t1
ORDER BY
	t1.Id

