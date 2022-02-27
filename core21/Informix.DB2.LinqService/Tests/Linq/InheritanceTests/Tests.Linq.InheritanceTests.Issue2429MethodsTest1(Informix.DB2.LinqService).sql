BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE BaseTable
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

SELECT FIRST 1
	x."Value",
	x.Id
FROM
	BaseTable x
WHERE
	x.Id = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	x."Value",
	x.Id
FROM
	BaseTable x
WHERE
	x.Id = 1 AND x."Value" = 100

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE BaseTable

