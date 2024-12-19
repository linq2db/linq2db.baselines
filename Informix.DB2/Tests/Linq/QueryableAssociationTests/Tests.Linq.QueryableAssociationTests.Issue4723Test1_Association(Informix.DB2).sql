BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4723Table1

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4723Table1
(
	Id               Int           NOT NULL,
	ExpressionMethod NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @ExpressionMethod VarChar -- String
SET     @ExpressionMethod = NULL

INSERT INTO Issue4723Table1
(
	Id,
	ExpressionMethod
)
VALUES
(
	@Id,
	@ExpressionMethod
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4723Table2

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4723Table2
(
	Id      Int           NOT NULL,
	"Value" NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value VarChar(7) -- String
SET     @Value = 'Value 1'

INSERT INTO Issue4723Table2
(
	Id,
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value VarChar(7) -- String
SET     @Value = 'Value 1'

INSERT INTO Issue4723Table2
(
	Id,
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Value VarChar(7) -- String
SET     @Value = 'Value 2'

INSERT INTO Issue4723Table2
(
	Id,
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t3.Id,
	t1.ExpressionMethod,
	t2.Association
FROM
	Issue4723Table1 t3
		LEFT JOIN (
			SELECT
				se."Value" as ExpressionMethod,
				ROW_NUMBER() OVER (PARTITION BY se.Id ORDER BY se.Id) as rn,
				se.Id
			FROM
				Issue4723Table2 se
		) t1 ON t1.Id = t3.Id AND t1.rn <= 1
		LEFT JOIN (
			SELECT
				a_Association."Value" as Association,
				ROW_NUMBER() OVER (PARTITION BY a_Association.Id ORDER BY a_Association.Id) as rn,
				a_Association.Id
			FROM
				Issue4723Table2 a_Association
		) t2 ON t2.Id = t3.Id AND t2.rn <= 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4723Table2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4723Table1

