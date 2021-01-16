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
DECLARE @Value_1 VarChar(5) -- String
SET     @Value_1 = 'PLUTO'

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
DECLARE @Value_1 VarChar(5) -- String
SET     @Value_1 = 'PIPPO'

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
DECLARE @Value_1 VarChar(5) -- String
SET     @Value_1 = 'PLUTO'

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
DECLARE @Value_1 VarChar(5) -- String
SET     @Value_1 = 'BOLTO'

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

SELECT SKIP 3
	t1."Value"
FROM
	TakeSkipClass t1
ORDER BY
	t1."Value"

BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 4
	t1."Value"
FROM
	TakeSkipClass t1
ORDER BY
	t1."Value"

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TakeSkipClass

