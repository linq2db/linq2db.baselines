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
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value1'

INSERT INTO TakeSkipClass
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value2'

INSERT INTO TakeSkipClass
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value3'

INSERT INTO TakeSkipClass
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value4'

INSERT INTO TakeSkipClass
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value5'

INSERT INTO TakeSkipClass
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value6'

INSERT INTO TakeSkipClass
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value7'

INSERT INTO TakeSkipClass
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value_1 VarChar(6) -- String
SET     @Value_1 = 'Value8'

INSERT INTO TakeSkipClass
(
	"Value"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	t1."Value"
FROM
	TakeSkipClass t1
ORDER BY
	t1."Value"

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TakeSkipClass

