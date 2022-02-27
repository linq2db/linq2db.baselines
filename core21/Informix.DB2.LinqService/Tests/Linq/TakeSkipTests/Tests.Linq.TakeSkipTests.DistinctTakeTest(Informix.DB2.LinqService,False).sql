BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE TakeSkipClass
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

SELECT FIRST 3 DISTINCT
	t1."Value"
FROM
	TakeSkipClass t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE TakeSkipClass

