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
DECLARE @Value_1 Integer(4) -- Int32
SET     @Value_1 = 100

INSERT INTO SampleClass
(
	Id,
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t."Value",
	s.Key_1,
	s.SecondValue
FROM
	SampleClass t
		INNER JOIN (
			SELECT FIRST 1
				1 as Key_1,
				3 as SecondValue
			FROM SYSTABLES
		) s ON s.Key_1 = t.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SampleClass

