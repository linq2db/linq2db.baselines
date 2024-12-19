BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4469Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4469Table
(
	"Integer" Int            NOT NULL,
	"Decimal" Decimal(10, 5) NOT NULL,
	"Double"  Float          NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Integer Integer(4) -- Int32
SET     @Integer = 100
DECLARE @Decimal Decimal(16)
SET     @Decimal = 100
DECLARE @Double Double(8)
SET     @Double = 100

INSERT INTO Issue4469Table
(
	"Integer",
	"Decimal",
	"Double"
)
VALUES
(
	@Integer,
	@Decimal,
	@Double
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	v."Integer" / 33,
	v."Decimal" / 33,
	v."Double" / 33
FROM
	Issue4469Table v

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4469Table

