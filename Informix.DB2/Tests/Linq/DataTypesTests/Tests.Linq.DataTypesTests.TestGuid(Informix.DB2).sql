BeforeExecute
-- Informix.DB2 Informix
DECLARE @Column Char(36) -- StringFixedLength
SET     @Column = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable Char(36) -- StringFixedLength
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	GuidTable r
WHERE
	r."Column" = @Column AND r.ColumnNullable = @ColumnNullable

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.Id,
	r."Column",
	r.ColumnNullable
FROM
	GuidTable r
WHERE
	r."Column" = 'a948600d-de21-4f74-8ac2-9516b287076e' AND
	r.ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	GuidTable

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column Char(36) -- StringFixedLength
SET     @Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @ColumnNullable Char -- StringFixedLength
SET     @ColumnNullable = NULL

INSERT INTO GuidTable
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
DECLARE @Column Char(36) -- StringFixedLength
SET     @Column = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable Char(36) -- StringFixedLength
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

INSERT INTO GuidTable
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
	GuidTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	GuidTable

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column Char(36) -- StringFixedLength
SET     @Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @ColumnNullable Char -- StringFixedLength
SET     @ColumnNullable = NULL

INSERT INTO GuidTable
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
DECLARE @Column Char(36) -- StringFixedLength
SET     @Column = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable Char(36) -- StringFixedLength
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

INSERT INTO GuidTable
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
	GuidTable t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	GuidTable

BeforeExecute
INSERT BULK GuidTable

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Column",
	t1.ColumnNullable
FROM
	GuidTable t1
ORDER BY
	t1.Id

