BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Boolean Char(1) -- StringFixedLength
SET     @Boolean = 'f'

INSERT INTO CreateTableTypes
(
	Id,
	"Boolean"
)
VALUES
(
	@Id,
	@Boolean
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Boolean Char(1) -- StringFixedLength
SET     @Boolean = 't'

INSERT INTO CreateTableTypes
(
	Id,
	"Boolean"
)
VALUES
(
	@Id,
	@Boolean
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1."Boolean"
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

