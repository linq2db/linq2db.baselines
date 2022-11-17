BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS StringEnumTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS StringEnumTable
(
	ColumnNullable NVarChar(8)     NULL,
	"Column"       NVarChar(8) NOT NULL,
	Id             Int         NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ColumnNullable VarChar -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 VarChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO StringEnumTable
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
DECLARE @ColumnNullable VarChar(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 VarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO StringEnumTable
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
DECLARE @Column_1 VarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable VarChar(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	r.ColumnNullable,
	r."Column",
	r.Id
FROM
	StringEnumTable r
WHERE
	r."Column" = @Column_1 AND r.ColumnNullable = @ColumnNullable

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.ColumnNullable,
	r."Column",
	r.Id
FROM
	StringEnumTable r
WHERE
	r."Column" = 'value=2' AND r.ColumnNullable = 'value=33'

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	StringEnumTable

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ColumnNullable VarChar -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 VarChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO StringEnumTable
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
DECLARE @ColumnNullable VarChar(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 VarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO StringEnumTable
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
	StringEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	StringEnumTable

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ColumnNullable VarChar -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 VarChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO StringEnumTable
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
DECLARE @ColumnNullable VarChar(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 VarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO StringEnumTable
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
	StringEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	StringEnumTable

BeforeExecute
INSERT BULK StringEnumTable

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ColumnNullable,
	t1."Column",
	t1.Id
FROM
	StringEnumTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS StringEnumTable

