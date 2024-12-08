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
DECLARE @Value VarChar(5) -- String
SET     @Value = 'PLUTO'

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
DECLARE @Value VarChar(5) -- String
SET     @Value = 'PIPPO'

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
DECLARE @Value VarChar(5) -- String
SET     @Value = 'PLUTO'

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
DECLARE @Value VarChar(5) -- String
SET     @Value = 'BOLTO'

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

SELECT SKIP @skip
	t1."Value"
FROM
	TakeSkipClass t1
ORDER BY
	t1."Value"

BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 4

SELECT SKIP @skip
	t1."Value"
FROM
	TakeSkipClass t1
ORDER BY
	t1."Value"

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TakeSkipClass

