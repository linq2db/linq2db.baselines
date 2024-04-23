BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id      Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value Integer(4) -- Int32
SET     @Value = 100

INSERT INTO SampleClass
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
	t.Id,
	t."Value",
	1
FROM
	SampleClass t

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SampleClass

