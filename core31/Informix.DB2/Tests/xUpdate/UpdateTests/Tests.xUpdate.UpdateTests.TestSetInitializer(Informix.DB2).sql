BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS UpdateSetTest

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS UpdateSetTest
(
	Id     Int         NOT NULL,
	Value1 VARCHAR(36) NOT NULL,
	Value2 Int         NOT NULL,
	Value3 Int         NOT NULL,
	Value4 VARCHAR(36)     NULL,
	Value5 Int             NULL,
	Value6 Int             NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value1 Char(36) -- StringFixedLength
SET     @Value1 = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 10
DECLARE @Value3 Integer(4) -- Int32
SET     @Value3 = 6
DECLARE @Value4 Char -- StringFixedLength
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL
DECLARE @Value6 Integer -- Int32
SET     @Value6 = NULL

INSERT INTO UpdateSetTest
(
	Id,
	Value1,
	Value2,
	Value3,
	Value4,
	Value5,
	Value6
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4,
	@Value5,
	@Value6
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Guid6 Char(36) -- StringFixedLength
SET     @Guid6 = '66aa9df9-260f-4a2b-ac50-9ca8ce7ad725'
DECLARE @Value6 Integer(4) -- Int32
SET     @Value6 = 8

UPDATE
	UpdateSetTest
SET
	UpdateSetTest.Value2 = 20,
	UpdateSetTest.Value5 = UpdateSetTest.Value2 * 5,
	UpdateSetTest.Value1 = @Guid6,
	UpdateSetTest.Value3 = 8,
	UpdateSetTest.Value6 = @Value6
WHERE
	UpdateSetTest.Id = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	x.Id,
	x.Value1,
	x.Value2,
	x.Value3,
	x.Value4,
	x.Value5,
	x.Value6
FROM
	UpdateSetTest x
WHERE
	x.Id = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS UpdateSetTest

