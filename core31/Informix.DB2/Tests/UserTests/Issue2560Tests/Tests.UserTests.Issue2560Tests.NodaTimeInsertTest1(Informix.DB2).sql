BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE DataClass
(
	Id      Int                     NOT NULL,
	"Value" datetime year to second NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 0
DECLARE @Value_1 Timestamp(16) -- DateTime
SET     @Value_1 = TO_DATE('2020-02-29 17:54:55.12300', '%Y-%m-%d %H:%M:%S.%F5')

INSERT INTO DataClass
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
	t1.Id,
	t1."Value"
FROM
	DataClass t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DataClass

