BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS BooleanTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS BooleanTable
(
	Id     Int NOT NULL,
	Value1 Int NOT NULL,
	Value2 Int NOT NULL,
	Value4 Int     NULL,
	Value5 Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 0

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 1

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 0

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 1

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 7
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 8
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 0

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 9
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 1

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 11
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 0

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 12
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 1

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 13
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 14
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 0

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 15
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 1

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 16
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 17
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 0

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 18
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 1

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 19
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 20
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 0

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 21
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 1

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 22
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 23
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 0

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 24
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 1

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 25
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 26
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 0

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 27
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 1

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 28
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 29
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 0

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 30
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer -- Int32
SET     @Value4 = NULL
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 1

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 31
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 32
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 0

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 33
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 0
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 1

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 34
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 35
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 0

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 36
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value4 Integer(4) -- Int32
SET     @Value4 = 1
DECLARE @Value5 Integer(4) -- Int32
SET     @Value5 = 1

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value4,
	@Value5
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) = (r.Value4 = r.Value5) AND (r.Value4 = r.Value5) IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS BooleanTable

