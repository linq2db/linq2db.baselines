BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TakeSkipClass

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TakeSkipClass
(
	"Value" VarChar(10)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value1'

INSERT INTO TakeSkipClass
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value2'

INSERT INTO TakeSkipClass
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value3'

INSERT INTO TakeSkipClass
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value4'

INSERT INTO TakeSkipClass
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value5'

INSERT INTO TakeSkipClass
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value6'

INSERT INTO TakeSkipClass
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value7'

INSERT INTO TakeSkipClass
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value8'

INSERT INTO TakeSkipClass
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 3
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT SKIP @skip FIRST @take
	t1."Value"
FROM
	TakeSkipClass t1
ORDER BY
	t1."Value"

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TakeSkipClass

