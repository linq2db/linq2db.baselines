BeforeExecute
-- Informix.DB2 Informix
DECLARE @Column Integer(4) -- Int32
SET     @Column = 2
DECLARE @ColumnNullable Integer(4) -- Int32
SET     @ColumnNullable = 3

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	IntEnumTable r
WHERE
	r."Column" = @Column AND r.ColumnNullable = @ColumnNullable

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column Integer(4) -- Int32
SET     @Column = 1
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL

INSERT INTO IntEnumTable
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
DECLARE @Column Integer(4) -- Int32
SET     @Column = 2
DECLARE @ColumnNullable Integer(4) -- Int32
SET     @ColumnNullable = 3

INSERT INTO IntEnumTable
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
	IntEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	IntEnumTable

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column Integer(4) -- Int32
SET     @Column = 1
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL

INSERT INTO IntEnumTable
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
DECLARE @Column Integer(4) -- Int32
SET     @Column = 2
DECLARE @ColumnNullable Integer(4) -- Int32
SET     @ColumnNullable = 3

INSERT INTO IntEnumTable
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
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	IntEnumTable t1
ORDER BY
	t1.Id

