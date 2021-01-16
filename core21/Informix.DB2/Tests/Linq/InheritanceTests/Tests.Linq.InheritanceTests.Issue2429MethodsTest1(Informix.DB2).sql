BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS BaseTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS BaseTable
(
	"Value" Int NOT NULL,
	Id      Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @BaseValue Integer(4) -- Int32
SET     @BaseValue = 100
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO BaseTable
(
	"Value",
	Id
)
VALUES
(
	@BaseValue,
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS BaseTable

