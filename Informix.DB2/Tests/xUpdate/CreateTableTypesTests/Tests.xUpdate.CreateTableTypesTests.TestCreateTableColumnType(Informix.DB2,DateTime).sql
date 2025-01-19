BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @DateTime Timestamp(16) -- DateTime
SET     @DateTime = TO_DATE('2000-01-01', '%Y-%m-%d')

INSERT INTO CreateTableTypes
(
	Id,
	DateTime
)
VALUES
(
	@Id,
	@DateTime
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @DateTime Timestamp(16) -- DateTime
SET     @DateTime = TO_DATE('2018-11-24 01:02:03', '%Y-%m-%d %H:%M:%S')

INSERT INTO CreateTableTypes
(
	Id,
	DateTime
)
VALUES
(
	@Id,
	@DateTime
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.DateTime
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

