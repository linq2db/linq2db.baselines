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

SELECT FIRST 3 DISTINCT
	t1."Value"
FROM
	TakeSkipClass t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TakeSkipClass

