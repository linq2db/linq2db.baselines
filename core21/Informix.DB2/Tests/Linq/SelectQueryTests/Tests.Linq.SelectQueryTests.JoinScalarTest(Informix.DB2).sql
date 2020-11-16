BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE SampleClass
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
	1
FROM
	SampleClass t
		INNER JOIN (
			SELECT FIRST 1
				1 as c1
			FROM SYSTABLES
		) s ON s.c1 = t.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE SampleClass

